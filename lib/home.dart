import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'articles.dart';
import 'screens.dart';
import 'suggestions.dart';
import 'journals.dart';
import 'chat_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('                            Mind Miner'),
        actions: [
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Suggestions()),
                );
              }),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                //itemExtent: 150,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Box(name: 'Deep Breathing'),
                  Box(name: 'Calm Music'),
                  Box(name: 'Postures'),
                  Box(name: 'Concentrate'),
                  Box(name: 'Walking'),
                ],
              ),
            ),
            Image(
              image: AssetImage('images/image1.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
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
              width: 350.0,
              height: 50,
              child: Center(
                child: Text(
                  'Ready to Answer some Questions ?',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen2()),
                  );
                },
                child: ElevatedButton(
                  //onPressed: ,
                  child: Text(' Yes!!! ',
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
            ElevatedButton(
              //onPressed: ,
              child: Text('Not now',
                  style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white)),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Articles()),
                    );
                  },
                  child: Text('Articles',
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
            Expanded(
                flex: 4,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Articles()),
                    );
                  },
                  child: Text('Journals',
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
            Expanded(
              flex: 1,
              child: IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  Box({@required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen2()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.blue[700],
              Colors.lightBlueAccent
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 160.0,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
