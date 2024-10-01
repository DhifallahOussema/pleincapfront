import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info12Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lettres et langues',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.05, // Responsive font size
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          
        ),
        backgroundColor: Colors.white,
      ),
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),
            Text(
              'les classes préparatoires littéraires qui mènent aux écoles de journalisme, aux ENS, à Sciences Po ou à d’autres Grandes Ecoles.\n\nles études de langues pour les cultures et leurs langues, la traduction et les relations interculturelles\n\nles études de lettres qui sont orientés plutôt vers les études de texte, la philosophie et la sociologie',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.04,
                color: const Color(0xFF3A3A3A),
                height: 1.5,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            _buildOptionButton(
              context,
              'Toutes les licences',
              screenWidth,
            ),
            SizedBox(height: screenHeight * 0.02),
            _buildOptionButton(
              context,
              'Les prépas littéraires',
              screenWidth,
            ),
            SizedBox(height: screenHeight * 0.02),
            _buildOptionButton(
              context,
              'Journalisme',
              screenWidth,
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String text, double screenWidth) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF4123FF)),
        borderRadius: BorderRadius.circular(8),
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
}
