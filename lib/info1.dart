import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';

class Info1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Text(
            'Commerce, Economie et Gestion',
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
                    'Il existe de nombreuses formations possibles mais toutes n’enseignent pas les mêmes connaissances. Évidemment, aucune de ces formations ne ferme de portes, tu pourras basculer d’un secteur à l’autre en fonction de tes appétences, de tes stages et de ta poursuite d’études.',
                    style: GoogleFonts.mulish(
                      color: const Color.fromRGBO(58, 58, 58, 0.8),
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    '⚬ Les formations en ventes commerciales qui vont te permettre d’acquérir les bases de la vente et du processus commercial (Bachelor, BTS MCO, BUT TC)\n\n ⚬ Les formations en gestion d’entreprises, (DCG, BUT GEA ou BTS CG) qui se focalisent davantage sur les chiffres, la comptabilité et la gestion financière.\n\n ⚬ Les formations en économie qui sont tournées vers l’étude poussée de l’économie et des mécanismes financiers (licence économie gestion, CPES, double licence)\n\n ⚬ Les formations en management qui forment des cadres en entreprises avec des connaissances larges autour du marketing, de la finance, etc. (Ecoles de commerce, Prépa ECG, PGE, BBA..).',
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
                    'Les Ecoles de commerce',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les Licences en Économie-Gestion',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les Prépas Économiques',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Le Bachelor',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les BUT Services',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les BTS Commerce',
                    screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton(
                    context,
                    'Les DCG',
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
                    'Tourisme',
                    screenWidth,
                  ),


                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Digital',
                    screenWidth,
                  ),



                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Management du luxe',
                    screenWidth,
                  ),



                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Finance, Banque, Assurance',
                    screenWidth,
                  ),


                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'hôtellerie, restauration et gastronomie',
                    screenWidth,
                  ),



                  SizedBox(height: screenHeight * 0.02),
                  _buildOptionButton_dark(
                    context,
                    'Les DCG',
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
