import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart'; // Import your SignUpPage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
  debugShowCheckedModeBanner: false,

      title: "Plein Cap",
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
          brightness: Brightness.light,
        ),
      ),
      home: MainPage(),
    );
  }
}
