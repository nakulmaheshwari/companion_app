import 'package:flutter/material.dart';
import 'questions.dart';

Question q = Question();

class screen2 extends StatefulWidget {
  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  int Qno = 0;
  void _increment() {
    setState(() {
      Qno++;
    });
    print(Qno);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Please Answer'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent,
                        Colors.blue[900],
                        Colors.lightBlueAccent
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    q.qList[Qno],
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 44,
                        color: Colors.white),
                  ),
                ),
                MyStatefulWidget(),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlueAccent),
                    ),
                    onPressed: _increment,
                    child: Text('Next Question'))
              ]),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlueAccent,
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Open navigation menu',
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
}

class MyStatefulWidget extends StatefulWidget {
  // const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
    ;
  }
}

/// This is the private State class that goes with MyStatefulWidget.
