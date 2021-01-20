import 'package:flutter/material.dart';
import 'package:neyesem/sample.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa(): super();
  @override
  State<StatefulWidget> createState() {
    return SenecekWidgetState();
  }
}

class SenecekWidgetState extends State<Anasayfa>{

  int selectedRadio;
  String text;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    text = "";
  }


  setSelectedRadio(int val,String b){
    setState(() {
      selectedRadio = val;
      text = b;
    });
  }
  @override
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
                       Text(text, style: TextStyle(color: Colors.white), ),
                      RaisedButton.icon(
                          onPressed: () => Navigator.push( context,MaterialPageRoute(builder: (context) => Sample())),
                          shape: RoundedRectangleBorder( borderRadius:BorderRadius.all(Radius.circular(10.0))),
                          label: Text('Ne Yesem', style: TextStyle(color: Colors.white), ),
                          icon: Icon(Icons.restaurant,color: Colors.white,),
                          textColor: Colors.white,
                          splashColor: Colors.grey[900],
                          color: Colors.lime[900],
                          ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Radio(value: 1,
                          groupValue: selectedRadio, 
                          activeColor: Colors.green,
                          onChanged: (val){
                            print("Radio $val");
                            setSelectedRadio(val,"Tıklandı 1");
                          }
                         ),
                         Radio(value: 2,
                          groupValue: selectedRadio, 
                          activeColor: Colors.blue,
                          onChanged: (val){
                            print("Radio $val");
                            setSelectedRadio(val,"Tıklandı 2");
                          }
                         )
                        ],
                      ),
                   
                  ],
               ), 
            ]
           )
         )
      );
  }
}