import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Text(
            'Santé',
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
                    'Si après le bac, tu souhaites devenir un professionnel de santé, tu as deux grandes options sur Parcoursup :',
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(58, 58, 58, 0.8),
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
                        '• Opter pour des études médicales, en choisissant sur Parcoursup un PASS ou une LAS (une année universitaire minimum) qui débouche, sous conditions de réussite, sur des études de médecine, sage-femme, dentaire, pharmacie ou kinésithérapie (pour devenir kiné tu pourras aussi passer par certaines licences STAPS).',
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
                        '• Opter pour des études paramédicales, en choisissant directement sur Parcoursup l’établissement et le diplôme de ton choix : IFSI pour devenir infirmier, IFE pour devenir ergothérapeute, CFO pour devenir Orthophoniste, etc.',
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
                          '❗ Pour toutes les spécialités de médecine (médecine urgentiste, psychiatrie, chirurgie, pédiatrie…), tu dois choisir PASS ou LAS sur Parcoursup. Attention aux passerelles imaginaires (Exemple : obtenir une passerelle de licence psychologie à médecine / psychiatrie, etc. Cela n’existe pas.)',
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(207, 58, 58, 58),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          )
                          ,
                          textAlign: TextAlign.justify,
                          ),

                      
                          
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.03),
                  _buildOptionButton(
                    context,
                    'PASS / LAS',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Médecine',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Maïeutique',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Odontologie',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Pharmacie',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Kinésithérapie',
                    screenWidth,
                  ),
                  
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    '• Secteur paramédical',
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
                    'Soins infirmiers',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Aide-soignant',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Orthophonie',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Ostéopathie',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Orthoptie',
                    screenWidth,
                  ),

                  
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Prothèse dentaire',
                    screenWidth,
                  ),
                  
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Ergothérapie',
                    screenWidth,
                  ),
                  
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Ambulancier',
                    screenWidth,
                  ),
                  
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Psycho-motricité',
                    screenWidth,
                  ),
                  
                  
                  
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Audioprothèse',
                    screenWidth,
                  ),

                  const SizedBox(height: 50),
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
