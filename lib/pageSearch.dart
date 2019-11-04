import 'package:flutter/material.dart';
import 'package:small_jobs_application/pageHome.dart';
import 'package:small_jobs_application/pageSearchResult.dart';

class PageSearch extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final jobTags = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Search with tags, names etc",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final searchButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => PageSearchResult()
          ));


        },
        child: Text("Search Jobs!",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 250),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 45.0),
              jobTags,
              SizedBox(height: 45.0),
              searchButton,
            ]
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('assets/picture_search.png'),
            fit: BoxFit.cover,
          ),

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