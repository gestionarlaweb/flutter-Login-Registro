import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String titulo;
  const CustomLogo({Key key, @required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // Altura y margen
        width: 150,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(height: 10),
            Text(this.titulo, style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
