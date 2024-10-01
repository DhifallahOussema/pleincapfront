import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'profile_completion_page.dart'; // Import your CompleteProfilePage
import 'package:google_sign_in/google_sign_in.dart';
import 'signinpage.dart'; // Import your SignInPage

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _email;
  String? _password;
  bool _termsAccepted = false;

  void _signUp() {
    if (_formKey.currentState?.validate() ?? false) {
      if (!_termsAccepted) {
        _showTermsDialog();
        return;
      }

      setState(() {
        _email = _emailController.text;
        _password = _passwordController.text;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileCompletionPage(
            email: _email!,
            password: _password!,
          ),
        ),
      );
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileCompletionPage(
            email: userCredential.user?.email ?? '',
            password: '', // Google sign-in doesn't use password
          ),
        ),
      );
    } catch (e) {
      // Handle errors
      if (kDebugMode) {
        print(e);
      }
    }
  }

  void _showTermsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Conditions d\'utilisation'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Veuillez lire et accepter les conditions suivantes pour continuer.'),
                SizedBox(height: 10.0),
                Text(
                    '1. Vous devez avoir l\'autorisation d\'un parent pour utiliser cette application.'),
                Text(
                    '2. Nous collectons des informations telles que votre nom et votre âge.'),
                Text(
                    '3. Vos données sont utilisées pour améliorer l\'application et vous offrir une meilleure expérience.'),
                Text(
                    '4. Nous ne partageons pas vos informations personnelles avec des tiers sans le consentement de vos parents.'),
                Text(
                    '5. Vous pouvez demander à voir ou à supprimer vos informations à tout moment.'),
                Text(
                    '6. Cette application ne contient pas de publicité ciblée pour les enfants.'),
                Text(
                    '7. Nous faisons de notre mieux pour protéger vos données, mais aucune méthode de sécurité n\'est parfaite.'),
                Text(
                    '8. Si vous avez des questions, demandez à un parent de nous contacter.'),
                // Add more terms here as needed
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Accepter'),
              onPressed: () {
                setState(() {
                  _termsAccepted = true;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          color: Colors.white, // Background color set to white
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80.0),
              Positioned(
                left: screenWidth * 0.4,
                top: screenHeight * 0.8,
                child: Image.asset(
                  'assets/logo.png', // Replace with your local asset logo
                  width: screenWidth * 0.52,
                  height: screenHeight * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 80.0),
              Text(
                'Commencer.!',
                style: GoogleFonts.getFont(
                  'Jost',
                  color: const Color(0xFF202244),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Créez votre compte et trouvez la carrière qui vous inspire !',
                style: GoogleFonts.getFont(
                  'Mulish',
                  color: const Color(0xFF545454),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mot de passe',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre mot de passe';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _termsAccepted,
                          onChanged: (bool? value) {
                            setState(() {
                              _termsAccepted = value ?? false;
                            });
                          },
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: _showTermsDialog,
                            child: Text(
                              'Accepter les termes et conditions',
                              style: GoogleFonts.getFont(
                                'Mulish',
                                color: const Color(0xFF545454),
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: _signUp,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0961F5),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x4C000000),
                              spreadRadius: 0,
                              offset: Offset(1, 2),
                              blurRadius: 8,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'S’inscrire',
                            style: GoogleFonts.getFont(
                              'Jost',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      '',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Mulish',
                        color: const Color(0xFF545454),
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: _signInWithGoogle,
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  spreadRadius: 0,
                                  offset: Offset(1, 2),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Center(
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0R_P0HtZ4z4QR1KDEHN8%2Fa568f36fffd9c47342e7fd5a14a1477e75461b95Google_Icons-09-512.png?alt=media&token=96ae383e-6d0c-4b02-b084-f9e09d196c6f',
                                width: 33,
                                height: 34,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        // Add Apple icon here similarly if needed
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Vous avez déjà un compte? Se connecter',
                        style: GoogleFonts.getFont(
                          'Mulish',
                          color: const Color(0xFF545454),
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100.0),
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
