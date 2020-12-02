import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    title: 'test',
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          children: [
            new Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 130.0, left: 60.0, right: 60.0, bottom: 150.00),
                child: new Image.asset('assets/Boreal.png'),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: new Text(
                  'Bienvenue!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: new Text(
                  'Pour debuter, entrez votre nom:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.00,
                  ),
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(right: 150.0, left: 150.0),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, right: 200.0, left: 200.0),
                child: RaisedButton(
                  child: Text('Continuer'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(name.text)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String textName = 'test';
  SecondPage(String name){
    this.textName = name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          children: [
            new Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, left: 60.0, right: 60.0, bottom: 40.00),
                child: new Image.asset('assets/Boreal.png'),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0),
                child: new RichText(
                  text: new TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Bienvenue '),
                      TextSpan(text: textName),
                      TextSpan(text: '!'),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 60.0, right: 60.0),
                child: new Text("Pour acceder au campus aujourd'hui, tu dois completer le questionnaire.")
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 60.0, right: 60.0),
                child: RaisedButton(
                  child: Text('Completer le questionnaire'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage(textName)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() => ThirdPageState(this.yourName);

  String yourName = 'test';
  ThirdPage(String name){
    this.yourName = name;
  }
}

class ThirdPageState extends State<ThirdPage> {
  String yourName = 'test';
  ThirdPageState(String name){
    this.yourName = name;
  }

  int mood = 0;
  int voyage = 0;
  int contact = 0;

  static DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Column(
          children: [
            new Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, left: 60.0, right: 60.0, bottom: 40.00),
                child: new Image.asset('assets/Boreal.png'),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 60.0, right: 60.0),
                child: new RichText(
                  text: new TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Formulaire COVID-19 pour '),
                      TextSpan(text: yourName),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 60.0, bottom: 40.00),
                child: new RichText(
                  text: new TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Date '),
                      TextSpan(text: formattedDate),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.00),
                child: new Text("Aujoud'hui, je me sens:", style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.00),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      iconSize: 40.0,
                      icon: Icon(Icons.sentiment_very_dissatisfied, color: mood == 1 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState((){
                          mood = 1;
                        });
                      },
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.sentiment_dissatisfied,color: mood == 2 ? Colors.yellow : Colors.black),
                      onPressed: () {
                        setState((){
                          mood = 2;
                        });
                      },
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.sentiment_very_satisfied, color: mood == 3 ? Colors.green : Colors.black),
                      onPressed: () {
                        setState((){
                          mood = 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.00),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Flexible(
                      child: Text("J'ai voyage hors du Canada dans les derniers 14 jours:"),
                    ),
                    SizedBox(width: 50),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.clear, color: voyage == 1 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState((){
                          voyage = 1;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.check, color: voyage == 2 ? Colors.green : Colors.black),
                      onPressed: () {
                        setState((){
                          voyage = 2;
                        });
                      },
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.00),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Flexible(
                      child: Text("J'ai ete en contacte avec un individu qui as eu COVID-19 dans les derniers 14 jours:"),
                    ),
                    SizedBox(width: 50),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.clear, color: contact == 1 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState((){
                          contact = 1;
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(Icons.check, color: contact == 2 ? Colors.green : Colors.black),
                      onPressed: () {
                        setState((){
                          contact = 2;
                        });
                      },
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),
            ),
            new Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 160.0, right: 160.0),
                child: RaisedButton(
                  child: Text('Soumettre'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => new FinalPage(hisName: yourName, hisMood: mood, hisVoyage: voyage, hisContact: contact)),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FinalPage extends StatefulWidget{
  FinalPage({this.hisName, this.hisMood, this.hisVoyage, this.hisContact});
  final String hisName;
  final int hisMood;
  final int hisVoyage;
  final int hisContact;

  @override
  State<StatefulWidget> createState() {return new FinalPageState();}
}

class FinalPageState extends State<FinalPage> {

  @override
  Widget build(BuildContext context) {
    return widget.hisMood >= 2 && widget.hisVoyage == 1 && widget.hisContact == 1 ? Scaffold(
      body: new Container(
        child: new Column(
          children: [
            new Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, left: 60.0, right: 60.0, bottom: 10.00),
                child: new Image.asset('assets/Boreal.png'),
              ),
            ),
            new Container(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 60.0, right: 60.0, bottom: 10.00),
                child: new RichText(
                  text: new TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Bienvenue a l'ecole "),
                      TextSpan(text: widget.hisName)
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 30.00),
                child: new Text("Vous pouvez rentrer aujourd'hui")
              ),
            ),
            new Container(
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0),
                child: new Image.asset('assets/Allowed.png'),
              ),
            ),
          ],
        ),
      ),
    ) : Scaffold(
      body: new Container(
        child: new Column(
          children: [
            new Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, left: 60.0, right: 60.0, bottom: 40.00),
                child: new Image.asset('assets/Boreal.png'),
              ),
            ),
            new Container(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 60.0, right: 60.0, bottom: 30.00),
                child: new RichText(
                  text: new TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Desolez, "),
                      TextSpan(text: widget.hisName),
                      TextSpan(text: "vous ne pouvez pas rentrez aujourd'hui")
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              child: Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0),
                child: new Image.asset('assets/Unfortunate.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}