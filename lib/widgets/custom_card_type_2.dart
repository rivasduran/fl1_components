import 'package:flutter/material.dart';
import 'package:fl_components_final/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key, 
    required this.imageUrl,
    this.name
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,//esto es para que el contenido no se salga de la tarjeta
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.5),//color de la sombra
      elevation: 10,
      child: Column(
        children: [
          //Image(
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10),
              child: Text( name ?? 'No Title')
            )
        ],
      ),
    );
  }
}