import 'package:flutter/material.dart';
import 'package:fl_components_final/screens/screens.dart';
import 'package:fl_components_final/models/models.dart';


class AppRoutes {
  //PROPIEDAD ESTATICA
  static const initialRoute = 'home';

  //MANERA FACIL DE DEFINIR RUTAS
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'    : ( BuildContext context ) => HomeScreen(),
  //   'lisview1': ( BuildContext context ) => Listview1Screen(),
  //   'lisview2': ( BuildContext context ) => Listview2Screen(),
  //   'card'    : ( BuildContext context ) => CardScreen(),
  //   'alert'   : ( BuildContext context ) => AlertScreen(),
  // };

  static final menuOptions = <MenuOption> [
    //TODO: BORRAR HOME
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'lisview1', name: 'Listview 1', screen: Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'card', name: 'Taretas', screen: const CardScreen(), icon: Icons.autofps_select_rounded),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.align_vertical_bottom_rounded),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for(final option in menuOptions){
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }


  static Route<dynamic> onGenerateRoute (RouteSettings settings) {//ESTA SE UTILIZA CUANDO MANDAMOS RUTAS QUE NO ESTAN DEFINIDAS
    print(settings);
    

    return MaterialPageRoute(
      builder: (context) => AlertScreen()
    );
  }
}