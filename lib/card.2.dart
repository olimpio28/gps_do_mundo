import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.denofgeek.com/wp-content/uploads/2021/09/Anthony-Mackie.png?fit=1200%2C883'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        //2
        child: Column(children: [
          const AuthorCard(
            authorName: 'Adam Simon',
            title: 'Software Engineer',
            imageProvider: NetworkImage(
                'https://www.denofgeek.com/wp-content/uploads/2021/09/Anthony-Mackie.png?fit=1200%2C883'),
          )
          //TODO: Adicionar texto posicionado
        ]),
      ),
    );
  }
}
