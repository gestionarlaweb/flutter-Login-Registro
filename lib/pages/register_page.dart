import 'package:chat/widgets/boton_page_login.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/custom_labels.dart';
import 'package:chat/widgets/custom_logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomLogo(
                  titulo: 'Registro',
                ),
                _Form(),
                CustomLabels(
                  ruta: 'login',
                  titulo: '¿Ya tienes cuenta?',
                  subTitulo: 'Ingresa ahora',
                ),
                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLogo(
      titulo: "Registrarse",
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final userCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        children: <Widget>[
          // Usuario
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: userCtrl,
          ),
          // Email
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            //textController: TextEditingController(),
            textController: emailCtrl,
          ),

          // Password
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Password',
            textController: passCtrl,
            isPassword: true,
          ),

          // Boton
          BotonLogin(
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
            text: "Ingrese",
          )
        ],
      ),
    );
  }
}
