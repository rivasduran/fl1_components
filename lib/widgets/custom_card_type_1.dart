
import 'package:flutter/material.dart';
import 'package:fl_components_final/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Sit enim exercitation dolor reprehenderit pariatur deserunt exercitation nostrud cupidatat dolore adipisicing ea adipisicing non.'),
          ),
          Padding(
            //padding: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                  
                  }, 
                  child: const Text('Cancel'),
                  //style: TextButton.styleFrom(primary: Colors.indigo),
                ),
                TextButton(
                  onPressed: () {
                  
                  }, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}