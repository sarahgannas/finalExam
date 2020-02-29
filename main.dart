import 'package:flutter/material.dart';
import './splash.dart';
import './page3.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash(),
    );
  }
}
class AppHome extends StatefulWidget{
  @override
  State<AppHome> createState() {
    return new AppState();
  }
}

class AppState extends State<AppHome>{
  

 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
   
     floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child:Text('GO'),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context)=>TopMovies()

          )
          
          );

        }

     ),
       
     
      

  body: new Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[ 
              Icon(Icons.slideshow,
              size: 100.0,
              color: Colors.red)
            ],
          ),
          new ListTile(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>TopMovies())),
              ),
          new ListTile(
             title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",),
            ),
          ),
          new ListTile(
             title: new TextField(
              decoration: new InputDecoration(
                hintText: "Password",),
            ),
          ),
           ],
      ),
    );
  }
}