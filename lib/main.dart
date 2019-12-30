import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage('images/daryllpic.jpg'),
              ),
              Text(
                'Daryll Wong',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.blueGrey.shade200,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 1.0,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.grey[700],
                      ),
                      title: Text(
                        '+ 65 96402977',
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child:
                  ListTile(
                    onTap: _launchLinkedInURL,
                    leading: Icon(
                      Icons.email,
                      color: Colors.grey[700],
                    ),
                    title: Text(
                      'daryll_wong@hotmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

_launchLinkedInURL() async{
  const url = 'https://www.linkedin.com/in/daryllwong/';
  if(await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}
