class Formation {
  final String statut;
  final String etablissement;
  final String commune;
  final String selectivite;
  final String filiereTresAgregee;
  final String filiereDetaillee;
  final String filiereDetailleeBis;
  final int tauxAcces;
  final String lienFormation;

  Formation({
    required this.statut,
    required this.etablissement,
    required this.commune,
    required this.selectivite,
    required this.filiereTresAgregee,
    required this.filiereDetaillee,
    required this.filiereDetailleeBis,
    required this.tauxAcces,
    required this.lienFormation,
  });

  factory Formation.fromJson(Map<String, dynamic> json) {
    return Formation(
      statut: json['Statut'] ?? 'Unknown',
      etablissement: json['Etablissement'] ?? 'Unknown',
      commune: json['Commune'] ?? 'Unknown',
      selectivite: json['Sélectivité'] ?? 'Unknown',
      filiereTresAgregee: json['Filière très agrégée'] ?? 'Unknown',
      filiereDetaillee: json['Filière détaillée'] ?? 'Unknown',
      filiereDetailleeBis: json['Filière détaillée bis'] ?? 'Unknown',
      tauxAcces: json['Taux d’accès'] ?? 0,
      lienFormation: json['Lien de la formation sur la plateforme Parcoursup'] ?? 'Unknown',
    );
  }
}
