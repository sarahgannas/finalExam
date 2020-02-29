import 'package:flutter/material.dart';

class TopMovies extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TopMoviesState();
  }
}
class TopMoviesState extends State<TopMovies> {
   @override
  Widget build(BuildContext context) {
 List<String>  groups = ['Parasite                 8/10','Irishman           7/10','Avengers: Endgame           7/10'];

    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Text("Top Movies"),
         ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              leading: Icon(
          Icons.person,
        ),
              title: new Text("Ahmad Hussain"),
              subtitle: Text("mail@example.com"),
            ),
           new ListTile(
             leading: Icon(Icons.slideshow),
              title: new Text("Top Movies"),
            ) ,
            
            new ListTile(
             leading: Icon(Icons.error_outline),
              title: new Text("About App"),
            ) ,
            Padding(
                        padding: EdgeInsets.only(top: 350.0),
                      ), 
             new ListTile(
             leading: Icon(Icons.exit_to_app,
             color: Colors.redAccent),
              title: new Text("Sign Out" ),
               
            ) ,
          ],
        )
      ),
     
     

     body: 
       new ListView(
      children: [
        ...groups.map(
              (movie) => Card(
              elevation: 3,
             child: ListTile(
                title: Text(movie),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>Page1())),
              )
          ),
        )
      ],
    ),
  );
 }
  }

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(" Parasite"),
      ),
  
    
      
    body: new Wrap(  
        direction: Axis.horizontal,
        
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[ Padding(
                        padding: EdgeInsets.only(top: 350.0),
                      ),
              Text (
            'A poor family, the Kims, con their way into\n'
           'becoming the servants of a rich family, the Parks.\n'
           'But their easy life gets complicated when their\n'
          'deception is threatened with exposure.',
          ),
           

            ],
          ),
          Padding(
                        padding: EdgeInsets.only(bottom: 300.0),
                      ),
          new ListTile(
            
             title: new DataTable(
               columns: [
                 DataColumn(label: Text('Role')),
                 DataColumn(label: Text('Name')),
               ],
               rows:[
                 DataRow(cells: [
                  DataCell(Text('Director')),
                   DataCell(Text('Bong Joon Ho'))
                 ]),
                 DataRow(cells: [
                  DataCell(Text('Writers')),
                  DataCell(Text('Bong Joon Ho'))
                   ]),
                   DataRow(cells: [
                  DataCell(Text('Stars')),
                  DataCell(Text('Kang-ho Song,Sun-kyun Lee'))
                   ]), 
                 ],),
          )],
          )
         );
      
   
  }
}  


    