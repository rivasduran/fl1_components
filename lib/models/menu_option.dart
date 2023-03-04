import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  //MenuOption(this.route, this.icon, this.name, this.screen);//DE ESTA MANERA LO DEJA TODO POSICIONAL
  MenuOption(//DE ESTA OTRA MANERA LE DOY LIVERTAD DE ENVIARMELO EN EL ORDEN QUE QUIERA
    {
      required this.route, 
      required this.icon, 
      required this.name, 
      required this.screen
    }
  );
}






