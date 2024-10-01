import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Science Politique',
          style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.05, // Responsive font size
              fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 80), // Adjusted padding
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF3A3A3A),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                  children: 
                  
                  const [
                    TextSpan(
                      text: 'La licence science politique',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    TextSpan(
                      text:
                          ' à l’université qui se concentre sur la science politique avec de l’histoire, de l’économie et du droit\n\n',
                      style: TextStyle(decoration: TextDecoration.none),
                    ),
                    
                    TextSpan(
                      text:
                          '• Sciences Po ou les Instituts d’Etudes Politiques (IEP)\n\n • Un bachelor spécialisé (attention à la reconnaissance du diplôme)',
                      style: TextStyle(decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Reduced spacing here
              buildInfoContainer('Les études de science politique'),
              const SizedBox(height: 15), // Reduced spacing here
              buildInfoContainer('Science Po et les IEP'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoContainer(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF4123FF)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF4123FF),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
