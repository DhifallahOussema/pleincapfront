import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'knowoptions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70), // Space below the top-left box
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Adjusts the space between elements
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0), // Adjust left padding as needed
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x7F000000),
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: Color(0x29000000),
                              spreadRadius: 1,
                              offset: Offset(0, 6),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2F29ff3e0c_09e4_424a_83d7_a8c72346239c.png?alt=media',
                            width: 40,
                            height: 40,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 130), // Adjust left padding as needed
                    child: Align(
                      alignment: Alignment.topLeft,
                    child: Container(
                      width: 102,
                      height: 42,
                      alignment: Alignment.topRight,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: const Color(0xE7FFFFFF),
                        border: Border.all(
                          color: const Color(0xDD928E8E),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x22C2D9FA),
                            spreadRadius: 0,
                            offset: Offset(0, 4),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 68,
                            top: 6,
                            child: Icon(
                              Icons.grade,
                              size: 26,
                              color: Color.fromARGB(255, 194, 153, 21),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 8,
                            child: SizedBox(
                              width: 77,
                              height: 20,
                              child: Text(
                                '200',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF777777),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 28.0), // Adjust right padding as needed
                    child: Align(
                      alignment: Alignment
                          .topRight, // Aligns the Container to the top right
                      child: Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x7F000000),
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: Color(0x29000000),
                              spreadRadius: 1,
                              offset: Offset(0, 6),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fab10dcb15c76253e8790ee26e12954bdf78d4bdd115991214_627210107917272_6014057588786808%201.png?alt=media&token=d45d0c14-ac5f-45bb-8b05-ae709788c2aa',
                            width: 40,
                            height: 40,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KnowOptionsPage()),
                  );
                },
                child: Container(
                  width: 354,
                  height: 104,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(
                          0x80B2C0D3), // Reduced opacity for a softer border
                      width: 1.5, // Adjust width for a finer border
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors
                        .white, // Add background color for better contrast
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
                              color: const Color(
                                  0x80B2C0D3), // Match the border color and opacity
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
                                left: -10,
                                top: -7,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                  width: 112,
                                  height: 112,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: -55,
                                top: -24,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                  width: 352,
                                  height: 470,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: -14,
                                top: 0,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F50555795f0858622f3a0857029071cb37c5a79b4images%201.png?alt=media&token=11f70656-09de-4688-885e-8b28a73e3f9b',
                                  width: 104,
                                  height: 91,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.88, -0.23),
                        child: SizedBox(
                          width: 234,
                          height: 39,
                          child: Text(
                            '1ere Generale',
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
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F10c214b8e1bb85f17a2559dc7320e65470baa2abrobot-chatbot-presentant-faits-scientifiques-maniere-amusante-engageante_124507-106960%201.png?alt=media&token=685fcbe8-dcb2-4331-ac50-41104219676a',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          '1ere Technologique',
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
              ),
              const SizedBox(height: 16),
              // Box 2
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fe8627236484702d481bca26989730b5d4221ac8fimages%20(4)%201.png?alt=media&token=2cb42b24-3936-4286-9189-d1fe9957f058',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          '1ere Professionnelle',
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
              ),
              const SizedBox(height: 16),
              // Box 3
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fc0f8c3bd99bd8845a886a4fac16ba1e41e8655bcimages%20(3)%201.png?alt=media&token=d2547a42-4b59-46dc-8aea-5fb87a80f3ec',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          '2ème GT (Générale & Technologique)',
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
              ),
              const SizedBox(height: 16),
              // Box 4
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F0725e4b42a94ba26fff4178cb7e85d7570d91ba0images%20(2)%201.png?alt=media&token=cab05b49-14fa-4db5-b3af-7e4a9092a615',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          '2ème Professionnelle',
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
              ),
              const SizedBox(height: 16),
              // Box 5
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F0725e4b42a94ba26fff4178cb7e85d7570d91ba0images%20(2)%201.png?alt=media&token=cab05b49-14fa-4db5-b3af-7e4a9092a615',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          'Tle Generale',
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
              ),
              const SizedBox(height: 16),
              // Box 6
              Container(
                width: 354,
                height: 104,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(
                        0x80B2C0D3), // Reduced opacity for a softer border
                    width: 1.5, // Adjust width for a finer border
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Colors.white, // Add background color for better contrast
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
                            color: const Color(
                                0x80B2C0D3), // Match the border color and opacity
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
                              left: -10,
                              top: -7,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fdce8ca9fd04b359ffaaa7c7ad32a16dff549505cdiagram-template-guy-thinking_23-2147671150%201.png?alt=media&token=8e690ddb-b91e-4ea5-9816-a35ec8a74b3f',
                                width: 112,
                                height: 112,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -55,
                              top: -24,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa57364c639f6686a8d8120eaaab761f684af1ddb%E2%80%94Pngtree%E2%80%943d%20fluid%20fantasy%20stereo%20gradient_4077717%202.png?alt=media&token=9a1b6a95-3603-4ca0-abb2-8f4a6302864c',
                                width: 352,
                                height: 470,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: -14,
                              top: 0,
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2F0725e4b42a94ba26fff4178cb7e85d7570d91ba0images%20(2)%201.png?alt=media&token=cab05b49-14fa-4db5-b3af-7e4a9092a615',
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
                      alignment: const Alignment(0.88, -0.23),
                      child: SizedBox(
                        width: 234,
                        height: 39,
                        child: Text(
                          'Tle Professionnelle',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
