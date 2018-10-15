import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class GoogleAuthButton extends StatelessWidget {
  final String buttonText;
  final Function onPressedCallback;

  GoogleAuthButton({
    @required this.buttonText,
    this.onPressedCallback,
  });

  @override
  Widget build(BuildContext context) {

    return new RaisedButton(
      onPressed: onPressedCallback,
      color: Colors.white,
      child: new Container(
          width: 230.0,
          height: 50.0,
          alignment: Alignment.center,
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                new Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: new Image.network(
                    'https://cdn4.iconfinder.com/data/icons/new-google-logo-2015/400/new-google-favicon-512.png',
                    width: 30.0,
                  ),
                ),

                new Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),

              ],
          ),
      ),
    );
  }
}