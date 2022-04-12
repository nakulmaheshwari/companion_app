import 'package:flutter/material.dart';
import 'nakul.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Suggestions'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            OptionBox(name: 'about Us', screen: nakul()),
            OptionBox(name: 'Disclaimer', screen: nakul()),
            OptionBox(name: 'Get Professional help', screen: nakul()),
            OptionBox(name: 'Manage Notifications', screen: nakul()),
            OptionBox(name: 'Rate Us', screen: nakul()),
            OptionBox(name: 'Settings', screen: nakul()),
            OptionBox(name: 'Log out', screen: nakul())
          ],
        ),
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
    ;
  }
}

class OptionBox extends StatelessWidget {
  OptionBox({@required this.name, this.screen});
  final String name;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        height: 60,
        width: 1,
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
        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Center(
          child: Text(name,
              style: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
