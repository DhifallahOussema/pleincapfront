import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'knowoptions.dart';
import 'testQuestions.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KnowOptionsPage()),
                  );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Tests psychologiques',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Les tests psychologiques en ligne présentés ici (gratuits, aucune inscription requise pour l\'obtention des résultats) ont été développés dans un contexte de recherche en psychologie ou en psychiatrie, ou sont basés sur les critères diagnostiques de conditions de santé mentale.',
              style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
              
            ),
            SizedBox(height: 16),
            Text(
              'Ces tests sont présentés dans le but d\'informer et de favoriser la réflexion et la connaissance de soi et non pas comme outils diagnostiques.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            // Spacer(),
            SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestQuestionPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: const Color.fromARGB(255, 30, 34, 255)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                ),
                child: Text(
                  'Démarrage Test',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 30, 34, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}