import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info7Page extends StatelessWidget {
  const Info7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sciences Humaine',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryCard('Psychologie'),
                  _buildCategoryCard('Histoire'),
                  _buildCategoryCard('Géographie et aménagement'),
                  _buildCategoryCard('Sociologie'),
                  _buildCategoryCard('Toutes les licences en sciences humaines'),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF4123FF),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF4123FF),
          ),
        ),
      ),
    );
  }
}
