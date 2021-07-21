import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/style.dart';

class Home extends StatelessWidget {
  @override
  //metodo que compõe a tela do aplicativo!
  //tudo que esta dentro da "build" atualiza automaticamente o aplicativo
  Widget build(BuildContext context) {
    //esqueleto da aplicaçao "Scaffold"
    return Scaffold(
      appBar: AppBar(
        //pasta de assets  esta identada  na pubspec
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        title: Text(
          "Tudo Gostoso",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        //importou a cor do arquivo style da pasta lib
        backgroundColor: orangeTheme,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/bolo.jpg"),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            color: orangeTheme,
            child: Column(
              children: [
                Text(
                  "Bolo gelado",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    //1° Coluna
                    Column(
                      children: [
                        //Icones importados pelo packed fontawesome
                        FaIcon(
                          FontAwesomeIcons.solidClock,
                          color: Colors.white,
                        ),
                        //importação de padding pela lupa symmetric para usar vertical ou horizontal
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Text(
                            "PREPARO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "40 MIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    //2° Coluna
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
