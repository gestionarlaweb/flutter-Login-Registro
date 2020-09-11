import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput(
      {Key key,
      @required this.icon,
      @required this.placeholder,
      @required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Con Padding, evitar que el texto que introducimos en el TextField
      // esté más separado de los extremos
      padding: EdgeInsets.only(top: 1, left: 1, bottom: 1, right: 10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          // sombra
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 5),
                blurRadius: 5)
          ]),
      child: TextField(
        controller: textController, // *
        autocorrect: false,
        keyboardType: this.keyboardType, // *
        obscureText: this.isPassword, // *
        decoration: InputDecoration(
            prefixIcon: Icon(this.icon), // *
            focusedBorder: InputBorder.none, // Le quita la línea de selección
            border: InputBorder
                .none, // Le quita la línea que hay debajo del TextField
            hintText: this.placeholder // *
            ),
      ),
    );
  }
}
