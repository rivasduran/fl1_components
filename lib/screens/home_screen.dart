
import 'package:flutter/material.dart';
import 'package:fl_components_final/theme/app_theme.dart';
import 'package:fl_components_final/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Componentes en Flutter'),
        ),
        //elevation: 0,//LO QUITAMOS PORQUE YA LO DEFINIMOS EN EL THEME
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => Listview1Screen()
            // );

            // Navigator.push(context, route);//CON ESTE NAVEGAMOS Y EL APP SABE QUE VENIMOS DE UNA PAGINA ANTERIOR
            // //Navigator.pushReplacement(context, route);//CON ESTE NAVEGAMOS Y YA NO CONTAMOS CON BOTON DE BACK

            //Navigator.pushNamed(context, 'card');
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}