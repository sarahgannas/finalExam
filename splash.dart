import 'package:flutter/material.dart';
import './main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(
        seconds: 5),() 

      {  Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => AppHome(),),);

      },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.red,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                     Icon(Icons.slideshow,
              size:100.0,
              color: Colors.white)
                    ],
                  ),
                ),
              ),
             
            ],
          )
        ],
      ),
    );
  }
}