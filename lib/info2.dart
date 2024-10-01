import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';
class Info2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold( appBar:AppBar(
      title: Flexible(
        child: Text(
          'Ingénieur et Sciences',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.05, // Responsive font size
              fontWeight: FontWeight.bold
          ),
          overflow: TextOverflow.ellipsis, // Optional: adds "..." if still too long
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
                      'Si tu souhaites t’orienter vers le domaine scientifique / ingénieur, après le bac, tu as trois grandes options :',
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(58,58,58,0.8),
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '• Classe Préparatoire aux Grandes Ecoles (CPGE) Scientifique (MPSI, PCSI…)  => 2 à 3 ans + 3 ans d’école d’ingénieur (intégrée après concours).',
                        style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20), // Add space between the items
                      Text(
                        '• Directement intégrer une prépa intégrée => 5 ans. Aucun concours.',
                        style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '• Cycle professionnalisant (BUT Mesures Physique, BTS Système Numérique, Bachelor en Cybersécurité) => 3 ans pour avoir le titre de technicien / assistant ingénieur  => 6 ans (3 ans BUT/BTS + 3 ans d’école d’ingénieur) Pour avoir le titre d’ingénieur. ',
                        style: GoogleFonts.poppins(
                      color: const Color(0xFF3A3A3A),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20), // Add space between the items
                      Text(
                        '• Les licences scientifiques (licence de mathématiques, licence de physique…) davantage théoriques, généralistes et tournées vers la recherche. => 3 ans + 2 ans de master ou 3 ans en école d’ingénieur.',
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
                    'Les prépas intégrées',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les CPGE scientifiques',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les BUT Production',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les licences scientifiques',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les  BTS Sciences et Ingénieur',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    ' Les Ecoles d’ingénieurs',
                    screenWidth,
                  ),
                 
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    '• Quelques secteurs',
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
                    'Informatique',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Cybersécurité',
                    screenWidth,
                  ),
                  const SizedBox( height: 40),
                    ],
                  ),

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
