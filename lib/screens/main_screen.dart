
import 'package:fitness_dashboard_ui/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class MainScreenn extends StatelessWidget {

  const MainScreenn ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(
        children: [
          Expanded(
            flex: 2, // con esto ocupa el 16% de la pantalla
            child: SizedBox(
              child: SideMenuWidget()),
            ),
            Expanded(
              flex: 7, // 58% de pantalla
              child: Container(color: Colors.blue ,)),
            Expanded(
              flex: 3,  // 25% de pantalla
              child: Container(color: Colors.green ,))
        ],
      )),
    );
  }

 
}