import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'home.dart'; // Ensure this import path is correct
import 'signuppage.dart'; // Ensure this import path is correct

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _errorMessage;

  Future<void> _signIn() async {
    setState(() {
      _errorMessage = null;
    });

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      setState(() {
        if (e is FirebaseAuthException) {
          switch (e.code) {
            case 'user-not-found':
              _errorMessage = 'Aucun utilisateur trouvé pour cet e-mail.';
              break;
            case 'wrong-password':
              _errorMessage = 'Le mot de passe est incorrect.';
              break;
            case 'invalid-email':
              _errorMessage = 'L\'adresse e-mail est invalide.';
              break;
            default:
              _errorMessage = 'Une erreur est survenue. Veuillez réessayer.';
              break;
          }
        } else {
          _errorMessage = 'Une erreur est survenue. Veuillez réessayer.';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white, // Set the main background to white
        child: Stack(
          children: [
            Positioned(
              left: screenWidth * 0.24,
              top: screenHeight * 0.12,
              child: Image.asset(
                'assets/logo.png', // Replace with your local asset logo
                width: screenWidth * 0.52,
                height: screenHeight * 0.15,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: screenWidth * 0.08,
              top: screenHeight * 0.32,
              child: Text(
                'Connectons-nous !',
                style: GoogleFonts.jost(
                  color: const Color(0xFF202244),
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.08,
              top: screenHeight * 0.37,
              child: Text(
                'Connectez-vous pour avancer dans votre parcours\nde carrière !',
                style: GoogleFonts.mulish(
                  color: const Color(0xFF545454),
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           Positioned(
  left: screenWidth * 0.08,
  top: screenHeight * 0.47,
  child: Container(
    width: screenWidth * 0.85,
    height: screenHeight * 0.07,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(24, 4, 91, 252),
          offset: Offset(0, 2),
          blurRadius: 10,
        )
      ],
    ),
    child: TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),  // Adjust padding for vertical alignment
          child: Icon(Icons.email), // Email icon
        ),
        hintText: 'Email',
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 18), // Center the text vertically
      ),
    ),
  ),
),
Positioned(
  left: screenWidth * 0.08,
  top: screenHeight * 0.55,
  child: Container(
    width: screenWidth * 0.85,
    height: screenHeight * 0.07,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(24, 4, 91, 252),
          offset: Offset(0, 2),
          blurRadius: 10,
        )
      ],
    ),
    child: TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),  // Adjust padding for vertical alignment
          child: Icon(Icons.lock), // Lock icon for password
        ),
        hintText: 'Mot de passe',
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 18), // Center the text vertically
      ),
    ),
  ),
),

            Positioned(
              left: screenWidth * 0.08,
              top: screenHeight * 0.65,
              child: Row(
                children: [
                  Image.network(
                    'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2Fe5088ac8d3639e7ab022f87858c7d3bd.png',
                    width: screenWidth * 0.05,
                    height: screenWidth * 0.05,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'Se souvenir de moi',
                    style: GoogleFonts.mulish(
                      color: const Color(0xFF545454),
                      fontSize: screenWidth * 0.033,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: screenWidth * 0.08,
              top: screenHeight * 0.65,
              child: Text(
                'Mot de passe oublié?',
                textAlign: TextAlign.right,
                style: GoogleFonts.mulish(
                  color: const Color(0xFF545454),
                  fontSize: screenWidth * 0.033,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.08,
              top: screenHeight * 0.70,
              child: GestureDetector(
                onTap: _signIn,
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0961F5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x4C000000),
                        offset: Offset(1, 2),
                        blurRadius: 8,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'S’identifier',
                      style: GoogleFonts.jost(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),

Positioned(
  left: (screenWidth - screenWidth * 0.4) / 2, // Centers the text horizontally
  top: screenHeight * 0.80,
  child: Text(
    '',
    textAlign: TextAlign.center,
    style: GoogleFonts.mulish(
      color: const Color(0xFF545454),
      fontSize: screenWidth * 0.035,
      fontWeight: FontWeight.w800,
    ),
  ),
),
Positioned(
  left: (screenWidth - (screenWidth * 0.12 * 2 + screenWidth * 0.02)) / 2, // Centers the Row horizontally
  top: screenHeight * 0.85,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: screenWidth * 0.12,
        height: screenWidth * 0.12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              offset: Offset(1, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Image.network(
            'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0R_P0HtZ4z4QR1KDEHN8%2Fa59492aa2b0e6c9d1206c11df95de0b2.png',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
      ),
      SizedBox(width: screenWidth * 0.02),
      Container(
        width: screenWidth * 0.12,
        height: screenWidth * 0.12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              offset: Offset(1, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa568f36fffd9c47342e7fd5a14a1477e75461b95Google_Icons-09-512.png?alt=media&token=e3f4704a-de76-4245-8b6a-b094eee176a7',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  ),
),
Positioned(
  left: (screenWidth - screenWidth * 0.5) / 2, // Centers the RichText horizontally
  top: screenHeight * 0.92,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpPage()),
      );
    },
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.mulish(
          color: const Color(0xFF545454),
          fontSize: screenWidth * 0.035,
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
),
if (_errorMessage != null)
  Positioned(
    left: screenWidth * 0.08,
    right: screenWidth * 0.08, // Center horizontally by setting both left and right
    bottom: screenHeight * 0.1,
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _errorMessage!,
        style: GoogleFonts.mulish(
          color: Colors.white,
          fontSize: screenWidth * 0.035,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),

            
            // Rest of the widgets...
          ],
        ),
      ),
    );
  }
}
