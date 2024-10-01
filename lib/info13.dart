import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info13Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Text(
            'Arts et design',
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
                    'L’art est un domaine assez large qui regroupe de nombreuses disciplines. On y retrouve les arts plastiques (peinture, sculpture, dessin…), les arts du spectacle et du cinéma (théâtre, cinéma, musique…) et l’artisanat (maroquinerie, verrerie,…) .',
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(58, 58, 58, 0.8),
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    '⚬ Lorsqu’on parle de design ou arts appliqués, on peut diviser les spécialisations en 4 domaines : l’image (graphisme, illustration, vidéo…) , l’objet (packaging, design de mobilier ou de produit…), l’espace (scénographie, événementiel, design d’espaces commerciaux…) et le service (User Experience, design d’expérience visiteur…)',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  _buildOptionButton(
                    context,
                    'Les études d\'art, design et arts appliqués',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les diplômes d\'arts (Ecoles des Beaux-Arts)',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'La licence Histoire de l\'Art et Archéologie (HAA)',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'DNMADE',
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
