import 'package:flutter/material.dart';
import 'package:neyesem/sample.dart';

class Anasayfa extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/image/body.jpg'),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[ Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[ 
                    RaisedButton.icon(
                      onPressed: () => Navigator.push( context,MaterialPageRoute(builder: (context) => Sample())),
                      shape: RoundedRectangleBorder( borderRadius:BorderRadius.all(Radius.circular(10.0))),
                      label: Text('Ne Yesem', style: TextStyle(color: Colors.white), ),
                      icon: Icon(Icons.restaurant,color: Colors.white,),
                      textColor: Colors.white,
                      splashColor: Colors.grey[900],
                      color: Colors.lime[900],
                    )
                  ],
               ), 
            ]
           )
         )
      );
  }
}
