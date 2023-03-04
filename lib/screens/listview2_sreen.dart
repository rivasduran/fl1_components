import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  
  final options = ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasi'];

  Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Listview Tipo 2"),
        ),
        //elevation: 0,//SOMBRA DEL APP BAR
        //backgroundColor: Colors.indigo,//LO QUITAMOS PORQUE LO TENEMOS EN EL THEME
      ),
      body: ListView.separated(
        itemCount: options.length,
        //itemBuilder: (context, index) => Text(options[index]), 
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo
          ),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        
      )
    );
  }
}