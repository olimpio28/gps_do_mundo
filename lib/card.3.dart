import 'dart:developer';
import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/3/3a/Parque_Lage_RJ.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                const Card3(),
                Container(
                  decoration: BoxDecoration(
                    //1
                    color: Colors.black.withOpacity(0.6),
                    //2
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                Center(
                    //11
                    child: Wrap(
                  //12
                  alignment: WrapAlignment.start,
                  //13
                  spacing: 12,
                  //14
                  runSpacing: 12,
                  //15
                  children: [
                    Chip(
                      label: Text('Natureza',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('delete');
                      },
                    ),
                    Chip(
                      label: Text('Agua',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('deleted');
                      },
                    ),
                    Chip(
                      label: Text('Arquitetura',
                          style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        log('deleted');
                      },
                    ),
                  ],
                ))
              ],
            )));
  }
}
