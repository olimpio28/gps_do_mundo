import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'circle.image.dart';

class AuthorCard extends StatelessWidget {
  //1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });
  //2
  @override
  Widget build(BuildContext context) {
    Container(
      //3
      padding: const EdgeInsets.all(16),
      //4
      child: Column(
        //5
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //6
          const Icon(
            Icons.book,
            color: Colors.white,
            size: 40,
          ),
          //7
          const SizedBox(height: 8),
          //8
          Text(
            'Guia Turistico',
            style: GpsdoMundoTheme.darkTextTheme.headline2,
          ),
          //9
          const SizedBox(height: 30),
        ],
      ),
    );
    return Container(
        padding: const EdgeInsets.all(16),
        //1
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleImage(
              imageProvider: imageProvider,
              imageRadius: 28,
            ),
            //2
            const SizedBox(width: 8),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(authorName, style: GpsdoMundoTheme.lightTextTheme.headline2),
              Text(title, style: GpsdoMundoTheme.lightTextTheme.headline3)
            ]),
            IconButton(
                //4
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                //5
                onPressed: () {
                  const snackBar = SnackBar(content: Text('favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                })
          ],
        ));
  }
}
