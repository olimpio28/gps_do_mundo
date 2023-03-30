import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  //1
  final String category = 'marvelous';
  final String title = 'Rio de janeiro';
  final String description = 'A cidade maravilhosa.';
  final String tourist = 'Acabrina Boina';
  //2
  @override
  Widget build(BuildContext context) {
    //3
    return Center(
      //todo: card1 decorate Container
      child: Container(
        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          //4
          image: DecorationImage(
            //5
            image: NetworkImage(
                'https://blog.123nilhas.com/wp-content/uploads/2022/12/conheca-os-lugares-com-as-melhores-vistas-do-rio-de-janeiro-conexao123.jpg'),
            //6
            fit: BoxFit.cover,
          ),
          //7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(children: [
          Text(
            category,
            style: GpsdoMundoTheme.darkTextTheme.bodyText1,
          ),
          Text(title, style: GpsdoMundoTheme.darkTextTheme.headline5),
          Text(
            description,
            style: GpsdoMundoTheme.darkTextTheme.bodyText1,
          ),
          Text(
            tourist,
            style: GpsdoMundoTheme.darkTextTheme.bodyText1,
          )
        ]),
      ),
    );
  }
}
