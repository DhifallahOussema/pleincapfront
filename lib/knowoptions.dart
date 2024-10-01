import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pleincap/PersonalityTestWebView.dart';
import 'package:pleincap/chatscreen.dart';
import 'formations.dart'; // Ensure this path is correct
import 'home.dart';
import 'parcoursup.dart';
import 'questions.dart';

class KnowOptionsPage extends StatelessWidget {
  const KnowOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>HomePage()),
                  );},
        ),
        
      backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Apprendre à mieux te connaître',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF3A3A3A),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildCard(
                context: context,
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F213bab521a0fbee221ba218a0c39a911adbdfc0dRectangle%20226.png?alt=media&token=1e5ca4b4-3e8b-4dd6-ae11-94eaf757e169',
                text: 'Mes Loisirs',
                screenWidth: screenWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildCard(
                context: context,
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa81df7a8fd77f78518785e2f2b2dcd17e78d5857Rectangle%20226.png?alt=media&token=936550db-9296-4ad3-998b-95e3ba6b59fb',
                text: 'Questions - Réponses',
                screenWidth: screenWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Questions()),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildCard(
                context: context,
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa1af4180155f7972e6128539f9975b74e1a652c1Rectangle%20226.png?alt=media&token=61972ab7-bf4b-4f3f-b5e3-cdf25fc5d6eb',
                text: 'Les Formations',
                screenWidth: screenWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FormationsPage()),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildCard(
                context: context,
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fad5d2503432797f7f59a1cd7b2029fd1b7eb3df7Rectangle%20226.png?alt=media&token=92685b53-f91d-4a1e-9d82-bb3b71d64f08',
                text: 'ParcourSup',
                screenWidth: screenWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Parcoursup()),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.03),
              _buildCard(
                context: context,
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F8a95514c23d02964f3ba1767cc0f6dbd6f82d9c3Rectangle%20226.png?alt=media&token=b808de69-289e-4db0-be60-44517bb0f4d5',
                text: 'Explorer mes passions',
                screenWidth: screenWidth,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                },
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required BuildContext context,
    required String imageUrl,
    required String text,
    required double screenWidth,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.9,
        height: screenWidth * 0.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: const Color(0x7C6F6F73)),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 0,
              offset: Offset(0, 5),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              height: 1.2,
              fontFamily: 'Poppins',
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.black45,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
