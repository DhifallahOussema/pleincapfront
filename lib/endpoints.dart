import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pleincap/models/formation.dart';

Future<List<Formation>> getParcoursupData() async {
  final response = await http.get(Uri.parse('http://10.70.0.120:8000/parcoursup/get_parcoursup_data'));

  if (response.statusCode == 200) {
    try {
      final rawJsonData = response.body;
      // Ensure that the response body is decoded correctly with UTF-8
      final utf8JsonData = utf8.decode(rawJsonData.codeUnits);

      print('Raw JSON Data: $utf8JsonData'); // Print raw JSON data

      final List<dynamic> jsonData = jsonDecode(utf8JsonData);

      // Debug each item in the list to ensure correct structure
      for (var item in jsonData) {
        print('Item JSON: $item'); // Print each item
      }

      final List<Formation> data = jsonData
          .map((jsonItem) => Formation.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
      return data;
    } catch (e) {
      print('Error parsing JSON: $e');
      return [];
    }
  } else {
    throw Exception('Failed to load data');
  }
}

void filterParcoursupData() async {
  final response = await http.get(
      Uri.parse('http://10.70.0.120:8000/parcoursup/filtrer_et_trier_data'));
  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Failed to load data');
  }
}

Future<String?> postQuestionAnswer(Map<String, int> data) async {
  final url = Uri.parse('http://10.70.0.120:8000/parcoursup/get_question_answer');

  try {
    // Send a POST request with the provided data
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Parse the response body and return the URL string
      String responseUrl = response.body; // Assuming the response body is the URL string
      return responseUrl;
    } else {
      print('Failed to load data: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('An error occurred: $e');
    return null;
  }
}

void chatLLM(String msg) async {
  final response = await http.post(
    Uri.parse('http://10.70.0.120:8000/parcoursup/chat_LLM'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'message': msg,
    }),
  );
  if (response.statusCode == 200) {
    print('Item created: ${response.body}');
  } else {
    print('Failed to create item');
  }
}
