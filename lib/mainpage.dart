import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signinpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: AutofillGroup(
          child: Form(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight,
                      color: Colors.white, // Ensure the background color is white
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.21,
                    top: screenHeight * 0.47,
                    child: Text(
                      'Accédez à votre avenir',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jost(
                        color: const Color(0xFF202244),
                        fontSize: screenWidth * 0.056, // 24 relative to screen width
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.23,
                    top: screenHeight * 0.54,
                    child: Container(
                      width: screenWidth * 0.58,
                      height: screenHeight * 0.13,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Add your content (buttons, images, text) here...
                        ],
                      ),
                    ),
                  ),
                  
                  Positioned(
                    left: screenWidth * 0.09,
                    top: screenHeight * 0.79,
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the SigninPage when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInPage()),
                        );
                      },
                      child: Container(
                        width: screenWidth * 0.82,
                        height: screenHeight * 0.065,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0961F5),
                          borderRadius: BorderRadius.circular(screenWidth * 0.07),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x4C000000),
                              spreadRadius: 0,
                              offset: Offset(1, 2),
                              blurRadius: 8,
                            )
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Utiliser votre propre compte',
                            style: GoogleFonts.jost(
                              color: Colors.white,
                              fontSize: screenWidth * 0.042, // 18 relative to screen width
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.30,
                    top: screenHeight * 0.88,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF545454),
                          fontSize: screenWidth * 0.032, // 14 relative to screen width
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: 'Pas de compte? '),
                          TextSpan(
                            text: 'S’inscrire',
                            style: GoogleFonts.mulish(
                              color: const Color(0xFF0961F5),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.23,
                    top: screenHeight * 0.54,
                    child: Container(
                      width: screenWidth * 0.58,
                      height: screenHeight * 0.13,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: screenWidth * 0.12,
                              height: screenHeight * 0.05,
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(26, 24),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    spreadRadius: 0,
                                    offset: Offset(1, 2),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.037,
                            top: screenHeight * 0.021,
                            child: Image.network(
                              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F520d2f60509112ce74a1c4b2fa3d9d3c.png',
                              width: screenWidth * 0.012,
                              height: screenHeight * 0.01,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.063,
                            top: screenHeight * 0.025,
                            child: Image.network(
                              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2Faca19b12294e34cf8b92a6eefaa48043.png',
                              width: screenWidth * 0.024,
                              height: screenHeight * 0.011,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.042,
                            top: screenHeight * 0.016,
                            child: Image.network(
                              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2Fcb7c00f52abf53426513514fc66039fa.png',
                              width: screenWidth * 0.037,
                              height: screenHeight * 0.021,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.15,
                            top: screenHeight * 0.015,
                            child: SizedBox(
                              width: screenWidth * 0.45,
                              child: Text(
                                'Continuer avec Google',
                                style: GoogleFonts.mulish(
                                  color: const Color(0xFF545454),
                                  fontSize: screenWidth * 0.037, // 16 relative to screen width
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: screenHeight * 0.077,
                            child: Container(
                              width: screenWidth * 0.12,
                              height: screenHeight * 0.05,
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(26, 24),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    spreadRadius: 0,
                                    offset: Offset(1, 2),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.042,
                            top: screenHeight * 0.093,
                            child: Image.network(
                              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2F0ee5f804c32d14e6db856cdf6a06919a.png',
                              width: screenWidth * 0.04,
                              height: screenHeight * 0.021,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            left: screenWidth * 0.15,
                            top: screenHeight * 0.093,
                            child: SizedBox(
                              width: screenWidth * 0.43,
                              child: Text(
                                'Continuer avec Apple',
                                style: GoogleFonts.mulish(
                                  color: const Color(0xFF545454),
                                  fontSize: screenWidth * 0.037, // 16 relative to screen width
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Replacing the image URL with the asset image "logo.png"
                  Positioned(
                    left: screenWidth * 0.26,
                    top: screenHeight * 0.17,
                    child: Image.asset(
                      'assets/logo.png', // Local asset image
                      width: screenWidth * 0.47,
                      height: screenHeight * 0.2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.24,
                    top: screenHeight * 0.07,
                    child: Image.asset(
                      'assets/logo.png', // Use the same asset if it's the logo
                      width: screenWidth * 0.0,
                      height: screenHeight * 0.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
