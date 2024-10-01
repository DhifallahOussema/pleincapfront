import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Text(
            'Droit',
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
                    'Pour exercer dans la plupart des métiers du droit (avocat, notaire, magistrat…), un bac+5 en droit est obligatoire. Il n’y a qu’une voie d’accès : l’université avec pour commencer, la licence de droit. Cependant, certaines formations professionnalisantes forment à des métiers du droit accessibles avec des études plus courtes comme greffier, clerc de notaire, assistant rédacteur d’actes etc) : le BTS collaborateur juriste notarial (ex-BTS notariat) ou le BUT Carrières Juridiques.',
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
                    'Les études de droit',
                    screenWidth,
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
