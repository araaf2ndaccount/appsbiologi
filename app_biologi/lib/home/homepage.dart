import 'package:app_biologi/jawaban/jawaban.dart';
import 'package:app_biologi/materi/materi.dart';
import 'package:app_biologi/test/quiz.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

// Color PrimaryColor = Color(0xff109618);

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;
  // final tabs = [
  //   TopTabsHome(),
  //   TopTabsMateri(),
  //   TopTabsTest()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text("Aplikasi Belajar Biologi",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Lato'))),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/brain.gif'),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue[600]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Materi()));
                      },
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      child: Center(
                          child: Text(
                        "Pembahasan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue[600]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Quiz1()));
                      },
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.transparent,
                      child: Center(
                          child: Text(
                        "Quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue[600]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Jawaban()));
                      },
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      child: Center(
                          child: Text(
                        "Jawaban",
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
        )
        //
        );
  }
}