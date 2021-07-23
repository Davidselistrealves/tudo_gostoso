import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import '../../../style.dart';

class Details extends StatelessWidget {
  final Recipe _recipeObj;

  Details(this._recipeObj);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      color: orangeTheme,
      child: Column(
        children: [
          Text(
            _recipeObj.name,
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
          ),
          Row(
            //Alinhamento de espaços entre elementos que estão na mesma linha "Row" olhar documentação
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    "${_recipeObj.preparationTime} MIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              //2° Coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.cheese,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "RENDIMENTO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "${_recipeObj.income} PORÇÕES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              //3°coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "FAVORITOS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    _recipeObj.numberOfFavorites.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              //4°coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCommentAlt,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "COMENTÁRIOS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    _recipeObj.numberOfComments.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
