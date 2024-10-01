import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pleincap/endpoints.dart';
import 'package:pleincap/models/formation.dart';
import 'knowoptions.dart';
import 'package:url_launcher/url_launcher.dart';

class Parcoursup extends StatefulWidget {
  @override
  _ParcoursupState createState() => _ParcoursupState();
}

class _ParcoursupState extends State<Parcoursup> {
  late Future<List<Formation>> listFormation;

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();
    listFormation =
        getParcoursupData(); // Initialize the Future for listFormation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KnowOptionsPage()),
            );
          },
        ),
        actions: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0), // Adjust horizontal padding as needed
      child: IconButton(
        icon: Row(
          children: [
            Icon(Icons.filter_alt_outlined, color: const Color.fromARGB(166, 1, 6, 255)),
            SizedBox(width: 4),
            Text(
              " Filtre ",
              style: TextStyle(color: const Color.fromARGB(255, 30, 34, 255)),
            ),
          ],
        ),
        onPressed: () {
          // Filter button action
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 30, 34, 255),
          side: BorderSide(color: const Color.fromARGB(255, 30, 34, 255)),
        ),
      ),
    ),
  ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Découvrez Votre Parcours d'Études",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: FutureBuilder<List<Formation>>(
                future: listFormation,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Failed to load data'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No data available'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var item = snapshot.data![index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Card(
                            elevation: 4,
                            color: const Color.fromARGB(255, 255, 255, 255), // Change background color of the Card
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  0.0), // Change border radius of the Card
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 30, 34, 255),
                                    width: 4,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(
                                    0.0), // Ensure border radius is consistent
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 8),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                198, 181, 238, 226),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            item.statut,
                                            style: TextStyle(
                                                color: const Color(0xff006a6f)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "${item.etablissement}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "📌  ${item.commune}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Filière très agrégée: ${item.filiereTresAgregee}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 49, 49, 49)),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "- ${item.selectivite}",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "- Taux d’accès: ${item.tauxAcces}%",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    ),
                                    SizedBox(height: 16),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          _launchURL(item.lienFormation);
                                        },
                                        child: Text("Voir la formation"),
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color.fromARGB(
                                              255, 30, 34, 255),
                                          side: BorderSide(
                                              color: const Color.fromARGB(
                                                  255, 30, 34, 255)),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5), // Adjust as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
