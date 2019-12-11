import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var betul = 0;
var salah = 0;
var quiz = AnimalQuiz();

class AnimalQuiz {
  var images = [
    "dsd",
    "cat",
    "dog",
    "owl",
    "aaa",
    "soal",
    "ccc",
    "ddd",
    "eee",
    "fff",
  ];

  var questions = [
    "1. Bagian dari sel saraf yang berfungsi mengirim pesan ke neuron-neuron lain adalah ....",
    "2. Bagian sel saraf yang membungkus akson dan berfungsi sabagai isolator yaitu ....",
    "3. Perjalanan impuls melintasi sinaps melibatkan zat yang dinamakan ....",
    "4. Yang dinamakan dengan unit terkecil sistem saraf adalah .... ",
    "5. Di bawah ini merupakan jalannya rangsangan yang benar pada sel saraf....",
    "6. Perhatikan gambar struktur sel saraf di bawah ini! Akson, dendrit, dan badan sel ditunjukkan pada nomor ....",
    "7. Hubungan ujung neurit dengan dendrit dinamakan ....",
    "8. Berdasarkan fungsinya, bertugas membantu kecepatan konduksi impuls listrik adalah ....",
    "9. Selaput pembungkus akson yang ada di bagian dalam yaitu ....",
    "10. Di dalam otak terdapat .... Sel saraf"
  ];

  var choices = [
    ["A. dendrit", "B. neurit", "C. akson", "D. synapsis", "E. leukon"],
    [
      "A. sel schwann",
      "B. badan dendrit",
      "C. badan miesel",
      "D. nodus ranvier",
      "E. selubung mielin"
    ],
    [
      "A. ganglion",
      "B. neurotransmitter",
      "C. akson",
      "D. neurolema",
      "E. neurotranslator"
    ],
    ["A. akson", "B. neurit", "C. neural", "D. neuron", "E. mielin"],
    [
      "A. dendrit - badan sel-mielin",
      "B. akson - dendrit - neurit",
      "C. dendrit - badan sel - akson",
      "D. dendrit - akson - badan sel",
      "E. badan sel - dendrit - akson"
    ],
    [
      "A. 3, 4 dan 2",
      "B. 1, 2, dan 3",
      "C. 3, 1, dan 2",
      "D. 3, 2, dan 1",
      "E. 5, 4, dan 3"
    ],
    ["A. ganglion", "B. respons", "C. impuls", "D. sinapsis", "E. akson"],
    [
      "A. Akson",
      "B. Selubung mielin",
      "C. Sinapsis",
      "D. Dendrit",
      "E. Neurotransmiter"
    ],
    ["A. akson", "B. neurit", "C. neural", "D. neuron", "E. mielin"],
    ["A. 67 miliar", "B. 68juta", "C. 68 miliar", "D. 86 juta", "E. 86 miliar"]
  ];

  var correctAnswers = [
    "C. akson",
    "E. selubung mielin",
    "B. neurotransmitter",
    "D. neuron",
    "C. dendrit - badan sel - akson",
    "C. 3, 1, dan 2",
    "D. sinapsis",
    "B. Selubung mielin",
    "D. mielin",
    "E. 86 miliar"
  ];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20.0)),

                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          "Pertanyaan ${questionNumber + 1} dari ${quiz.questions.length}",
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                              fontFamily: 'Lato')),
                      Text(
                        "Nilai: $finalScore",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontFamily: 'Lato'),
                      )
                    ],
                  ),
                ),
                // image
                Container(
                  child: Image.asset(
                    "assets/images/${quiz.images[questionNumber]}.jpg",
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),

                Text(
                  quiz.questions[questionNumber],
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.white, fontFamily: 'Lato'),
                ),

                Padding(padding: EdgeInsets.all(10.0)),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //button 1
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore += 10;
                          betul++;
                        } else {
                          debugPrint("Wrong");
                          salah++;
                        }
                        updatePertanyaan();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.choices[questionNumber][0],
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Lato'),
                          ),
                        ],
                      ),
                    ),

                    //button 2
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore += 10;
                          betul++;
                        } else {
                          debugPrint("Wrong");
                          salah++;
                        }
                        updatePertanyaan();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.choices[questionNumber][1],
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Lato'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //button 3
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore += 10;
                          betul++;
                        } else {
                          debugPrint("Wrong");
                          salah++;
                        }
                        updatePertanyaan();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.choices[questionNumber][2],
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Lato'),
                          ),
                        ],
                      ),
                    ),

                    //button 4
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore += 10;
                          betul++;
                        } else {
                          debugPrint("Wrong");
                          salah++;
                        }
                        updatePertanyaan();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.choices[questionNumber][3],
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Lato'),
                          ),
                        ],
                      ),
                    ),
                    // button 5
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][4] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore += 10;
                          betul++;
                        } else {
                          debugPrint("Wrong");
                          salah++;
                        }
                        updatePertanyaan();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            quiz.choices[questionNumber][4],
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Lato'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.all(15.0)),

                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          resetQuiz();
                        },
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.amber,
                        child: Center(
                            child: Text(
                          "Quit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
      betul = 0;
      salah = 0;
    });
  }

  void updatePertanyaan() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Total(score: finalScore, truth: betul, flse: salah)));
      } else {
        questionNumber++;
      }
    });
  }
}

class Total extends StatelessWidget {
  final int score;
  final int truth;
  final int flse;

  Total({Key key, @required this.score, this.truth, this.flse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(50.0)),
              Container(
                height: 300,
                child: Image.asset('assets/images/trophy.gif'),
              ),
              Center(
                child: Text(
                  "Nilai Akhir : $score",
                  style: TextStyle(
                      fontSize: 20.0, fontFamily: 'Lato', color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Center(
                child: Text(
                  "Benar          : $truth",
                  style: TextStyle(
                      fontSize: 20.0, fontFamily: 'Lato', color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Center(
                child: Text(
                  "Salah            : $flse",
                  style: TextStyle(
                      fontSize: 20.0, fontFamily: 'Lato', color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.all(15.0)),
              Center(
                child: MaterialButton(
                  minWidth: 120,
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pop(context);
                    finalScore = 0;
                    questionNumber = 0;
                    betul = 0;
                    salah = 0;
                  },
                  child: Text(
                    "Reset Quiz",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
