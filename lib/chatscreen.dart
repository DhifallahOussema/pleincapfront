import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'knowoptions.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> _messages = []; // List to store messages
  final TextEditingController _textController =
      TextEditingController(); // Controller for TextField

  // Function to send message to the endpoint
  void _sendMessage() async {
    String messageText = _textController.text;
    if (messageText.isEmpty) return;

    // Add user message to the chat
    setState(() {
      _messages.add({'role': 'user', 'text': messageText});
    });

    // Clear the text field
    _textController.clear();

    // Send the message to the server
    try {
      final response = await http.post(
        Uri.parse('http://10.70.0.120:8000/parcoursup/chat_LLM'),
        headers: <String, String>{
          'Content-Type':
              'application/json; charset=UTF-8', // Ensure UTF-8 is specified
        },
        body: jsonEncode(<String, dynamic>{
          'message': messageText,
        }),
        encoding: Encoding.getByName('utf-8'), // Set encoding to UTF-8
      );

      if (response.statusCode == 200) {
        // Parse the response and get only the last message from the assistant
        final responseData = jsonDecode(utf8.decode(response.bodyBytes));

        // Check if the history is not empty and contains assistant messages
        if (responseData['history'].isNotEmpty) {
          final lastMessage = responseData['history'].last;
          if (lastMessage['role'] == 'assistant') {
            setState(() {
              _messages.add({'role': 'assistant', 'text': lastMessage['text']});
            });
          }
        }
      } else {
        print('Failed to create item');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KnowOptionsPage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.android, color: Colors.white),
            ),
            SizedBox(width: 10),
            Text("MyBot"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                if (message['role'] == 'user') {
                  return UserMessage(message['text']!);
                } else {
                  return BotMessage(message['text']!);
                }
              },
            ),
          ),
          _buildMessageComposer(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  // Widget to build the message composer
  Widget _buildMessageComposer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: "Ecrire un message...",
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.blue),
            onPressed: _sendMessage, // Send message on button press
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose(); // Dispose the controller to prevent memory leaks
    super.dispose();
  }
}

// Bot message widget
class BotMessage extends StatelessWidget {
  final String text;

  const BotMessage(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}

// User message widget
class UserMessage extends StatelessWidget {
  final String text;

  const UserMessage(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
