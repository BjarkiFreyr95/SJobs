import 'package:flutter/material.dart';
import 'package:small_jobs_application/pageAcceptedJobs.dart';
import 'package:small_jobs_application/pageAdvertisedJobs.dart';
import 'package:small_jobs_application/pageSearch.dart';
import 'package:small_jobs_application/pageSettings.dart';
import 'package:small_jobs_application/pagelogin.dart';

class PageHome extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final searchButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.red[600],

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => PageSearch()
          ));
        },
        child: Text("Search A Job",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final myJobsButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange[900],

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => PageAcceptedJobs()
          ));
        },
        child: Text("Accepted Jobs",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final myAdvertismentsButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange[600],

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => PageAdvertisedJobs()
          ));
        },
        child: Text("My Advertised Jobs",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final settingsButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.grey[600],

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => PageSettings()
          ));
        },
        child: Text("Settings",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Container(
        width: 900,
        height: 2000,
        padding: const EdgeInsets.only(top: 300, bottom: 100, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            searchButton,
            myJobsButton,
            myAdvertismentsButton,
            settingsButton,
          ]
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('assets/picture_01Extended.png'),
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