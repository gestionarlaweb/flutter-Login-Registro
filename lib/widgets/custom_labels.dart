import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLabels extends StatelessWidget {
  final String ruta;
  final String titulo;
  final String subTitulo;

  const CustomLabels(
      {Key key,
      @required this.ruta,
      @required this.titulo,
      @required this.subTitulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text('¿No tienes cuenta?',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        SizedBox(height: 10),
        GestureDetector(
          child: Text(this.subTitulo,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pushReplacementNamed(
                context, this.ruta); // register es el nombre de la ruta
          },
        ),
      ],
    ));
  }
}
