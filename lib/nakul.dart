import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class nakul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('                 '),
        ),
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                height: 190,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.lightBlueAccent,
                backgroundImage: AssetImage('images/nakul.jpg'),
              ),
              Text(
                'Nakul Maheshwari',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 35.0,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  //backgroundColor: Colors.white,
                  //decorationColor: Colors.blue,
                ),
              ),
              Text(
                'Android Developer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 25.0,
                  letterSpacing: 5.0,
                  color: Colors.teal[100],
                  //fontWeight: FontWeight.bold,
                  //backgroundColor: Colors.white,
                  //decorationColor: Colors.blue,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                //height: 40,
                //width: 350,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 35,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        customLaunch('tel:+919644577180');
                      },
                      child: Text(
                        '+96 44 577 180',
                        style: TextStyle(
                          //fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          color: Colors.lightBlue,
                          //fontWeight: FontWeight.bold,
                          //backgroundColor: Colors.white,
                          //decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                //height: 40,
                //width: 350,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 35,
                      color: Colors.teal,

                      //color: ,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    //RaisedButton(onPressed: null),
                    GestureDetector(
                      onTap: () {
                        customLaunch(
                            'mailto:nakulmaheshwari27@gmail.com?subject=test%20subject&body=test%20body');
                      },
                      child: Text(
                        'nakulmaheshwari27@gmail.com',
                        style: TextStyle(
                          //fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          color: Colors.lightBlueAccent,
                          //fontWeight: FontWeight.bold,
                          //backgroundColor: Colors.white,
                          //decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                height: 40,
                //width: 350,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 15,
                      //backgroundColor: Colors.black,
                      backgroundImage: AssetImage('images/insta.png'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        customLaunch(
                            'https://www.instagram.com/nakul.maheshwari27/');
                      },
                      child: Text(
                        'Instagram',
                        style: TextStyle(
                          //fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          color: Colors.lightBlueAccent,
                          //fontWeight: FontWeight.bold,
                          //backgroundColor: Colors.white,
                          //decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                height: 40,
                //width: 350,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/linkedin.png'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        customLaunch(
                            'https://www.linkedin.com/in/nakul-maheshwari-9445a5185');
                      },
                      child: Text(
                        'LinkedIn',
                        style: TextStyle(
                          //fontFamily: 'Pacifico',
                          fontSize: 17.0,
                          color: Colors.lightBlueAccent,
                          //fontWeight: FontWeight.bold,
                          //backgroundColor: Colors.white,
                          //decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}
