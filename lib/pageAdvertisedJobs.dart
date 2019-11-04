import 'package:flutter/material.dart';
import 'package:small_jobs_application/pageHome.dart';

class PageAdvertisedJobs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new ExactAssetImage('assets/picture_advertisedJobs.png'),
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