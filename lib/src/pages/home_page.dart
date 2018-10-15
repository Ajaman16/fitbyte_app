import 'package:fitbyte_app/src/containers/auth_button/auth_button_container.dart';
import 'package:fitbyte_app/src/containers/counter/counter.dart';
import 'package:fitbyte_app/src/containers/counter/increase_counter.dart';
import 'package:fitbyte_app/src/containers/user_profile/user_profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 26.0),
        ),
        centerTitle: true,
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GoogleAuthButtonContainer(),
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: new CurrentUserProfile(),
              ),

              new Text(
                'You have pushed the button this many times:',
              ),
              new Counter(),
            ],
          ),
        ),
      ),
      floatingActionButton: new IncreaseCountButton()

    );
  }

}
