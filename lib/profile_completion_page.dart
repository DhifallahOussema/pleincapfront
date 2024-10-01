import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'home.dart'; // Import HomePage from the separate file
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileCompletionPage extends StatefulWidget {
  final String email;
  final String password;

  const ProfileCompletionPage(
      {super.key, required this.email, required this.password});

  @override
  _ProfileCompletionPageState createState() => _ProfileCompletionPageState();
}

class _ProfileCompletionPageState extends State<ProfileCompletionPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  bool _formCompleted = false;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  Future<void> _onFormSubmit() async {
    setState(() {
      _formCompleted = true;
    });

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: widget.email,
        password: widget.password,
      );

      User? user = userCredential.user;
      if (user != null) {
        await user.updateProfile(
            displayName:
                '${_firstNameController.text} ${_lastNameController.text}');

        await _firestore.collection('users').doc(user.uid).set({
          'firstName': _firstNameController.text,
          'lastName': _lastNameController.text,
          'dob': _dobController.text,
          'phone': _phoneController.text,
          'email': widget.email,
          // Add profile picture URL if uploaded to Firebase Storage
          // 'profilePicture': profilePictureUrl,
        });

        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _formCompleted
            ? const CongratulatoryContainer()
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F212f531a41e4c6b4d1ffe4fdddd375aa.png',
                            width: 37,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Remplir votre Profil',
                            style: GoogleFonts.jost(
                              color: const Color(0xFF202244),
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Center(
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE8F1FF),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: ClipOval(
                              child: _image != null
                                  ? Image.file(
                                      File(_image!.path),
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    )
                                  : const Icon(
                                      Icons.camera_alt,
                                      color: Colors.blue,
                                      size: 50,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              labelText: 'Prénom',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          TextField(
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              labelText: 'Nom',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          TextField(
                            controller: _dobController,
                            decoration: InputDecoration(
                              labelText: 'Date de Naissance',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            ),
                            controller:
                                TextEditingController(text: widget.email),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          TextField(
                            controller: _phoneController,
                            onChanged: (String number) {
                              if (kDebugMode) {
                                print(number);
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Numéro',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Sexe',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            items: <String>['Mâle', 'Femme', 'Autre']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {},
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: ElevatedButton(
                            onPressed: _onFormSubmit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0961F5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: const Size(double.infinity, 60),
                            ),
                            child: Text(
                              'Continuer',
                              style: GoogleFonts.jost(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class CongratulatoryContainer extends StatelessWidget {
  const CongratulatoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 360,
        height: 460,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 360,
                height: 460,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F8FE),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Positioned(
              left: 114,
              top: 40,
              child: Image.network(
                'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F676fd9b11f124eb72d6ec62a00c1791c.png',
                width: 26,
                height: 34,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 139,
              top: 49,
              child: Image.network(
                'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2Fc26c04a538f6760d2c7cda3d8aa288b9.png',
                width: 26,
                height: 34,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 102,
              top: 62,
              child: Image.network(
                'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F3e9f793e13381c8d7d2f852c8463f7c7.png',
                width: 153,
                height: 153,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 123,
              top: 144,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Ff284ee6dfc19c29f5f76fc66d6dc062bffd9dacbImage%209.png?alt=media&token=e2938121-8506-4816-b493-b42c49e7b84b',
                width: 110,
                height: 102,
                fit: BoxFit.contain,
              ),
            ),
            const Positioned(
              left: 0,
              top: 243,
              child: SizedBox(
                width: 360,
                height: 34,
                child: Align(
                  child: Text(
                    "Vous avez réussi !",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.41,
                      color: Color(0xFF202244),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 12,
              top: 283,
              child: SizedBox(
                width: 336,
                height: 52,
                child: Text(
                  "Bienvenue dans l'application, "
                  "toutes les fonctionnalités sont désormais accessibles !",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41,
                    height: 1.43,
                    color: Color(0xFF202244),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 25,
              right: 25,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0961F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: Text(
                  'Retour à l\'accueil',
                  style: GoogleFonts.jost(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
