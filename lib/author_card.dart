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
    //TODO: Substitua return container(...) por...
    return Container(
        padding: const EdgeInsets.all(16),
        //1
        child: Row(
          //TODO: Adicionar alinhamento
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
            ])
            // TODO: adiciona IconButton
          ],
        ));
  }
}