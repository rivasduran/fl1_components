
import 'package:flutter/material.dart';

import 'package:fl_components_final/widgets/widgets.dart';
//import 'package:fl_components_final/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Center(
          child: Text('Card Widget'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Iron Man', imageUrl: 'https://www.cinemascomics.com/wp-content/uploads/2020/06/iron-man-gemas-del-infinito-endgame.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://img.europapress.es/fotoweb/fotonoticia_20200801164231_1200.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://as01.epimg.net/epik/imagenes/2018/02/28/portada/1519840019_452077_1519840197_noticia_normal.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/loki-serie-1617702892.jpg',),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}

