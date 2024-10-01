import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'formations.dart';
class Info8Page extends StatelessWidget {
  const Info8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
      title: Text(
        'Architecture',
        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
      backgroundColor: Colors.white,
    ),
    backgroundColor: Colors.white,
      body: Container(
        width: 414,
        height: 896,
        clipBehavior: Clip.hardEdge,
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
                    left: 37,
                    top: 384,
                    child: Container(
                      width: 321,
                      height: 40,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF4123FF),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 25,
                            top: 10,
                            child: Text(
                              "Les études et écoles d'architecture (ENSA)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF4123FF),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                height: 1.4,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 41,
                    top: 144,
                    child: SizedBox(
                      width: 328,
                      height: 229,
                      child: Text(
                        "En France, la formation en architecture menant au Diplôme d’Etat d’Architecte (DEA) est délivrée dans 22 établissements. 90% des architectes sont formés dans les 20 Écoles Nationales Supérieures d’Architecture (ENSA). Bien que les programmes soient basés sur un tronc commun, chaque école proposent ses propres spécialités. On t’invite à regarder en détails !\n\nBon à savoir : Les études pour devenir architecte d’intérieur sont plutôt liées aux études d’arts appliqués. Pour exercer ce métier, tu dois passer par un DNMADe Espace puis un DSAA, un DNSEP design ou un diplôme dans une école reconnue par le CFAI (15 en France).\nLes études et écoles d'architecture (ENSA)\n",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.getFont(
                          'Mulish',
                          color: const Color(0xCC3A3A3A),
                          fontSize: 15,
                          height: 1.6,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
