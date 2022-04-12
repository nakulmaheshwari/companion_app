import 'package:flutter/material.dart';
import 'articles_data.dart';

Data data = Data();

// articles screen1
class Articles extends StatelessWidget {
  String s = ' data';
  String t = ' Topic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Articles',
              style: TextStyle(
                  fontSize: 40,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s),
            ArticleBox(topic: t, data: s)
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
  }
}

// articles screen2

class Ascreen extends StatelessWidget {
  Ascreen({@required this.topic, this.data});
  final String topic;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Suggestions'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('topic1',
                  style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
              height: 685,
              width: 360,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('data',
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

class ArticleBox extends StatelessWidget {
  ArticleBox({@required this.topic, this.data});
  final String topic;
  final String data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Ascreen(topic: topic, data: data)),
        );
      },
      child: Container(
        height: 60,
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
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: Text(topic,
              style: TextStyle(
                  fontSize: 30,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
