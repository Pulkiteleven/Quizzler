import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/Questions.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Center(child: Text('Quizler')),
      ),
      body: quizz(),
    ),
  ));
}

class quizz extends StatefulWidget {
  const quizz({Key? key}) : super(key: key);


  @override
  _quizzState createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  List<Icon> icons = [];
  List<Question> que = [];

  Question a = Question(questionText: 'Thor is not worthy?', questionAnswer: false);
  Question b = Question(questionText: 'Batman name is Bruce Wayne?', questionAnswer: true);
  Question c = Question(questionText: 'RCB has won most number of IPL Trophies?', questionAnswer: false);

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    que.add(a);
    que.add(b);
    que.add(c);
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    que[counter].questionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25.0,),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text('True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        quizzer(true,que[counter].questionAnswer);
                      });
                    },
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text('False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0
                    ),),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        quizzer(false, que[counter].questionAnswer);
                      });
                    },
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: icons
              ),
            )
          ],
        ),
      ),
    );
  }

  void quizzer(bool annswer,bool marked){
    counter += 1;

    if(annswer == marked){
      icons.add(Icon(Icons.check,color: Colors.green,),);
    }
    else if(annswer != marked){
      icons.add(Icon(Icons.close,color: Colors.red,),);
    }
  }

  }

class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    'Things we do for love',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text('True'),
                    color: Colors.green,
                    onPressed: () {},
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text('False'),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
