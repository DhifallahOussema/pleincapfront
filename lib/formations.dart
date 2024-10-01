import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pleincap/info13.dart';
import 'knowoptions.dart';
import 'info1.dart';
import 'info2.dart';
import 'info3.dart';
import 'info4.dart';
import 'info5.dart';
import 'info6.dart';
import 'info7.dart';
import 'info8.dart';
import 'info9.dart';
import 'info10.dart';
import 'info11.dart';
import 'info12.dart';


class FormationsPage extends StatelessWidget {
  const FormationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formations', style: GoogleFonts.getFont('Poppins')),
        backgroundColor: Colors.white,
      ),

      backgroundColor: Colors.white,
      body: Center(child:SingleChildScrollView(

        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(
              '  Quels domaines souhaites-tu explorer?',
              style: GoogleFonts.poppins(
                color: const Color(0xFF3A3A3A),
                fontSize: 19,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),// Space below the top-left box
            const SizedBox(height: 40),


            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Info1Page()),
                );
              },
              child: Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white, // Add background color for better contrast
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 354,
                        height: 104,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0x80B2C0D3), // Match the border color and opacity
                            width: 1.5, // Ensure consistency in border width
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.95, -1),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            
                            Positioned(
                              left: 0,
                              top:5,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F555ee55b24b868f031ad9013275a61a570daa0cdimages%20(10)%201.png?alt=media&token=aab1294d-8b67-42cd-a5b9-fed9b0291c71',
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.88,0),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          'Commerce, Economie et Gestion',

                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: const Color(0xFF303457),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            // Box 1
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info2Page()),
            );
          },
            child: Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          
                          Positioned(
                            left: 0,
                            top: 5,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fd520fee41de54d565ffcaad7442a6bc502ab2314images%20(9)%201.png?alt=media&token=dc9adb16-4a5b-4963-9231-486c24895f11',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.35),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Ingénieur et Sciences',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 2
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info3Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdf2d38cdb46ff26c58c0b6a53b2ab151316afc6f10352134-removebg-preview%201.png?alt=media&token=f952877f-43e6-4f74-9039-e763225f8b0d',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.35),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Santé',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 3
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info4Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F163da8036941d05af823928c08a79bb6882c7826pngtree-3d-illustration-of-law-court-png-image_11488176%201.png?alt=media&token=49d75bd7-fa03-46fb-ab41-c5e43b835fa5',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Science Politique',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 4
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info5Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F247c72fac6b37cdc00a1f5e3c0761461c5d7ba4f9719964-removebg-preview%201.png?alt=media&token=3464ae7e-1b2c-4ed5-9783-a75c8b428057',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Droit',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 5
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info6Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            left: 0,
                            top: 7,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Ffe9125e4839bd16b6786cef0f98ebee9ec619b22images%20(11)%202.png?alt=media&token=ce55d819-bbc5-498e-acf8-39636ef59451',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Sport',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Info7Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: 10,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fe55ba7a80db8de4443901723a0151ad3eda339198004581%202.png?alt=media&token=436f35ac-79f5-4637-8da1-feae40284c4b',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Sciences Humaine',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Info8Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F81518a31d648d85164f3c2a4e3c7a53de547a2db3d-rendering-isometric-house-removebg-preview%202.png?alt=media&token=9b64e999-5270-4843-b087-a6f4c3bf4abe',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Architecture',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Info9Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F669c3a66f897a4b9b433d7390eeb98ec0a5d070eistockphoto-1375655193-612x612-removebg-preview%202.png?alt=media&token=2e865b3f-0aca-49b7-822c-a7b7707646da',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.1),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Communication et audiovisuel',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Info13Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F3162e003303449f6b4a0a1e5d59cb2ed45571f50images%20(15)%202.png?alt=media&token=025aaa6c-3cad-4f79-8c40-02f2e5b830ae',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Arts et design',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info12Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            left: 0,
                            top: 10,
                            child: Image.network(
                              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F32a6870d0f98ccc03651b752cbaaadb6.png',
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Lettres et langues',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info10Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fc2c3aafc1dca7beb6b106dd4741653e6d23d8dadpngtree-d-illustration-of-smart-farming-concept-tractor-on-piece-of-land-png-image_11496509-removebg-preview%201.png?alt=media&token=432ffd21-e3ae-4524-99e7-8862d8fa65cc',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Agriculture et soins animaliers',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),),
            const SizedBox(height: 16),
            // Box 6
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info11Page()),
            );
          },child:Container(
              width: 354,
              height: 104,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0x80B2C0D3), // Reduced opacity for a softer border
                  width: 1.5, // Adjust width for a finer border
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white, // Add background color for better contrast
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 354,
                      height: 104,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0x80B2C0D3), // Match the border color and opacity
                          width: 1.5, // Ensure consistency in border width
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.95, -1),
                    child: Container(
                      width: 90,
                      height: 91,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Positioned(
                            left: -14,
                            top: 0,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F0b47fb1275f201038001cd5717c99d03639d446c9461228%201.png?alt=media&token=a8521f27-c978-4e07-b93f-9419e55b8ea3',
                              width: 104,
                              height: 91,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.88, 0.3),
                    child: SizedBox(
                      width: 234,
                      height: 39,
                      child: Text(
                        'Fonction publique',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF303457),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
                          

            ),),

          const SizedBox(height: 40),],
        ),
        
      ),
      
      ),);
  }
}
