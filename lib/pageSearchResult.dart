import 'package:flutter/material.dart';
import 'package:small_jobs_application/pageHairJob.dart';
import 'package:small_jobs_application/pageHome.dart';

class PageSearchResult extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final selectJobButton = Opacity(
      opacity: 0.0,

      child: Material(
        color: Colors.black,

        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) => PageHairDresser()
            ));

          },
      ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('assets/picture_searchResult.png'),
            fit: BoxFit.cover,
          ),


        ),
        padding: const EdgeInsets.only(top: 300),
        child: Column(
          children: <Widget>[
            SizedBox(height: 45.0),
            selectJobButton,
          ],

        ),
      ),




      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => PageHome()));
          },
          child: Icon(Icons.home)
      ),
    );
  }
}