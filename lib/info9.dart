import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info9Page extends StatelessWidget {
   const Info9Page({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Text(
            'Communication et audiovisuel',
            style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.05, // Responsive font size
                fontWeight: FontWeight.bold),
            overflow:
                TextOverflow.ellipsis, // Optional: adds "..." if still too long
            maxLines: 2,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: AutofillGroup(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Ce domaine regroupe de nombreux métiers et de nombreuses spécialisations. En communication, tu intégreras plutôt des métiers en gestion de projets de communication alors que si tu souhaites travailler dans les métiers de l’audiovisuel, tu seras plutôt spécialisé dans un domaine de production (photo, vidéo, graphisme etc). Les deux peuvent aussi s’entremêler.',
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(58, 58, 58, 0.8),
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 40),
                  
                  SizedBox(height: screenHeight * 0.03),
                  _buildOptionButton(
                    context,
                    'BTS Communication',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                   'La licence info-com',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Le BUT info-com',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les études en communication et audiovisuel',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                     'DNMADE',
                    screenWidth,
                  ),
                  
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    '• Les secteurs spécifiques',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                   'Journalisme',
                    screenWidth,
                  ),


                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Digital et numérique',
                    screenWidth,
                  ),



                 

                  const SizedBox( height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(
      BuildContext context, String text, double screenWidth) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF4123FF)),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.04,
            color: const Color(0xFF4123FF),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton_dark(
      BuildContext context, String text, double screenWidth) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xFF4123FF),
        border: Border.all(color: const Color(0xFF4123FF)),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.04,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
