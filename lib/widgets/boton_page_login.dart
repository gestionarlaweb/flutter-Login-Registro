import 'package:flutter/material.dart';

class BotonLogin extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonLogin({Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Container(
        height: 35,
        width: double.infinity,
        child: Center(
          child: Text('Ingresar',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
