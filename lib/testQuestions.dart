import 'package:flutter/material.dart';
import 'package:pleincap/WebViewPage.dart';
import 'package:pleincap/endpoints.dart';
import 'questions.dart'; // Ensure this import includes your list of questions

class TestQuestionPage extends StatefulWidget {
  @override
  _TestQuestionPageState createState() => _TestQuestionPageState();
}

class _TestQuestionPageState extends State<TestQuestionPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<int> _answers = List.filled(40, 2); // Default values set to 2 for 40 questions

  void _onAnswerSelected(int questionIndex, int answerIndex) {
    setState(() {
      _answers[questionIndex] = answerIndex;
    });
  }

  bool _isAnswerSelected(int questionIndex) {
    return _answers[questionIndex] > 0;
  }

  Future<void> _nextPage() async {
    if (_isAnswerSelected(_currentPage * 5)) {
      if (_currentPage < 7) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        // Create the answers map with keys and values
        Map<String, int> answersMap = {};
        for (int i = 0; i < _answers.length; i++) {
          answersMap['q_$i'] = _answers[i];
        }
        answersMap['age'] = 22;
        answersMap['sexe'] = 0;
        answersMap["iq_2"] = 0;
        print(answersMap);
        String? response = await postQuestionAnswer(answersMap);
        if (response != null) {
          print('Response received: $response');
          String cleanedUrl = response.replaceAll('"', '');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewPage(url: cleanedUrl),
            ),
          );
        } else {
          print('No response received or an error occurred');
        }
      }
    } else {
      // Show a message or indicator to prompt the user to select an answer
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Veuillez sélectionner une réponse')),
      );
    }
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
              MaterialPageRoute(builder: (context) => Questions()),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding here
        child: PageView.builder(
          controller: _pageController,
          itemCount: 8, // 40 questions divided by 5 questions per page
          onPageChanged: (pageIndex) {
            setState(() {
              _currentPage = pageIndex;
            });
          },

          itemBuilder: (context, pageIndex) {
  int startQuestionIndex = pageIndex * 5;
  int endQuestionIndex = (pageIndex + 1) * 5;
  endQuestionIndex = endQuestionIndex > 40 ? 40 : endQuestionIndex;

  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          'Tests psychologiques',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        for (int i = startQuestionIndex; i < endQuestionIndex; i++)
          Column(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: const Color.fromARGB(255, 30, 34, 255),
                        width: 4,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question ${i + 1}: ${_getQuestionText(i)}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: List.generate(6, (index) {
                            return ListTile(
                              leading: Radio<int>(
                                value: index,
                                groupValue: _answers[i],
                                onChanged: (value) {
                                  _onAnswerSelected(i, index);
                                },
                                activeColor: const Color.fromARGB(255, 30, 34, 255),
                              ),
                              title: Text(
                                _getOptionText(index),
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Space between the cards
            ],
          ),
        SizedBox(height: 4),
        Align(
          alignment: Alignment.bottomRight,
          child: OutlinedButton(
            onPressed: _nextPage,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: const Color.fromARGB(255, 30, 34, 255)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              _currentPage < 7 ? 'Suivant' : 'Terminer',
              style: TextStyle(
                color: const Color.fromARGB(255, 30, 34, 255),
              ),
            ),
          ),
        ),
      SizedBox(height: 20),
      ],
    ),
  );
},

          
          ),
      ),
    );
  }

  String _getQuestionText(int index) {
    // Return the question text based on the index
    List<String> questions = [
      'Avoir de nouvelles idées et être créatif(ve) est important pour moi. J\'aime faire des choses à ma propre façon originale.',
      'Il est important pour moi d\'être riche. Je veux avoir beaucoup d\'argent et des choses dispendieuses.',
      'Je pense qu\'il est important que chaque personne dans le monde soit traitée de façon égale. Je crois que chacun devrait avoir les mêmes chances dans la vie.',
      'Il est important pour moi de montrer mes capacités. Je veux que les gens admirent ce que je fais.',
      'Il est important pour moi de vivre dans un environnement sûr. J\'évite tout ce qui pourrait menacer ma sécurité.',
      'J\'aime les surprises et suis toujours en quête de nouvelles choses à faire. Je pense qu\'il est important de faire beaucoup de choses différentes dans la vie.',
      'Je crois que les gens devraient faire ce qu\'on leur dit. Je pense qu\'ils devraient suivre les règles en tout temps, même quand personne ne regarde.',
      'Il est important pour moi d\'écouter les gens qui sont différents de moi. Même quand je suis en désaccord avec eux, je veux quand même les comprendre.',
      'Je pense qu\'il est important de ne pas demander plus que ce que l\'on a. Je crois que les gens devraient être satisfaits de ce qu\'ils ont.',
      'Je cherche toutes les occasions possibles de m\'amuser. Il est important pour moi de faire des choses qui me donnent du plaisir.',
      'Il est important pour moi de prendre mes propres décisions sur ce que je fais. J\'aime être libre de planifier et de choisir mes activités.',
      'Il est très important pour moi d\'aider les gens autour de moi. Je veux prendre soin de leur bien-être.',
      'Avoir beaucoup de succès est important pour moi. J\'aime impressionner les autres.',
      'Il est très important pour moi que mon pays soit en sécurité. Je pense que l\'État doit être vigilant contre les menaces de l\'intérieur et de l\'extérieur.',
      'J\'aime prendre des risques. Je suis toujours à la recherche d\'aventures.',
      'Il est important pour moi de toujours se comporter correctement. Je veux éviter de faire quoique ce soit que les gens diraient incorrect.',
      'Il est important pour moi d\'être en charge et de dire aux autres ce qu\'ils doivent faire. Je veux que les gens fassent ce que je dis.',
      'Il est important pour moi d\'être fidèle à mes amis. Je veux être dévoué(e) pour les personnes proches de moi.',
      'Je crois fermement que les gens devraient prendre soin de la nature. Préserver l\'environnement est important pour moi.',
      'La croyance religieuse est importante pour moi. Je m\'efforce de faire ce que ma religion exige.',
      'Il est important pour moi que les choses soient organisées et propres. Je n\'aime vraiment pas le désordre.',
      'Je pense qu\'il est important de s\'intéresser à des choses. J\'aime être curieux(se) et essayer de comprendre toutes sortes de choses.',
      'Je crois que toutes les populations de la planète devraient vivre en harmonie. Promouvoir la paix entre tous les groupes dans le monde est important pour moi.',
      'Je pense qu\'il est important d\'être ambitieux(se). Je veux montrer à quel point je suis capable.',
      'Je pense qu\'il est mieux de faire les choses de façon traditionnelle. Il est important pour moi de suivre les pratiques établies.',
      'Il est important pour moi de m\'impliquer dans ma communauté. Je veux participer et contribuer à des activités locales.',
      'Je crois que les gens devraient respecter les traditions et les coutumes. Il est important pour moi de conserver les pratiques culturelles.',
      'Il est très important pour moi d\'avoir de bonnes relations avec les autres. Je veux que tout le monde autour de moi s\'entende bien.',
      'Il est important pour moi de rechercher des défis intellectuels. J\'aime me confronter à des problèmes difficiles.',
      'Je crois qu\'il est crucial de respecter la loi. Je veux que les gens suivent toujours les règles.',
      'Je pense qu\'il est essentiel d\'être ouvert aux nouvelles expériences. Je veux essayer de nouvelles choses.',
      'Je crois que le succès financier est important pour moi. Je veux accumuler des richesses.',
      'Il est important pour moi de prendre soin de ma famille. Je veux que mes proches se sentent soutenus.',
      'Il est important pour moi de me sentir bien dans ma peau. Je fais attention à mon apparence et à ma santé.',
      'Je pense qu\'il est essentiel d\'aider les autres. Je veux contribuer à améliorer la vie des gens autour de moi.',
      'Il est important pour moi de défendre mes opinions. Je veux faire connaître mes convictions et les défendre.',
      'Je crois qu\'il est crucial de préserver la culture locale. Je veux soutenir les pratiques et les traditions de ma communauté.',
      'Il est important pour moi de rester informé des nouvelles tendances. J\'aime être à jour avec ce qui se passe dans le monde.',
      'Je pense qu\'il est crucial d\'être honnête avec soi-même. Je veux être authentique et vrai dans mes actions.',
      'Il est important pour moi de participer à des activités sociales. Je veux être impliqué(e) dans des événements communautaires.',
      'Je crois qu\'il est essentiel de s\'engager dans des projets de bénévolat. J\'aime aider les autres de manière significative.',
      'Il est important pour moi de montrer ma créativité. Je veux avoir l\'opportunité de m\'exprimer de manière originale.',
      'Je pense qu\'il est essentiel de planifier pour l\'avenir. Je veux préparer soigneusement mes projets et mes objectifs.',
      'Il est important pour moi de maintenir un équilibre entre le travail et la vie personnelle. Je veux avoir du temps pour moi-même et pour mes proches.',
      'Je crois qu\'il est crucial d\'être respectueux des autres opinions. Je veux écouter et comprendre les perspectives différentes.',
    ];

    return questions[index];
  }

  String _getOptionText(int index) {
    // Return the option text based on the index
    List<String> options = [
      'Tout à fait comme moi',
      'Comme moi',
      'Un peu comme moi',
      'Un petit peu comme moi',
      'Pas comme moi',
      'Pas du tout comme moi',
    ];

    return options[index];
  }
}
