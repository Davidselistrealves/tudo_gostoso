import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  //metodo que compõe a tela do aplicativo!
  //tudo que esta dentro da "build" atualiza automaticamente o aplicativo
  Widget build(BuildContext context) {
    //esqueleto da aplicaçao "Scaffold"
    return Scaffold(
      appBar: AppBar(
        title: Text("Tudo Gostoso"),
        //pasta de asstes  esta identada  na pubspec
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
