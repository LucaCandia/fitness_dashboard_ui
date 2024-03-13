
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fitness_dashboard_ui/widgets/pie_chart_widget.dart';
import 'package:fitness_dashboard_ui/widgets/side_menu_widget.dart';
import 'package:fitness_dashboard_ui/widgets/sumary_widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness_dashboard_ui/widgets/dashboard_widgett.dart';

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
              child: DashboardWidget(),),
            Expanded(
              flex: 3,  // 25% de pantalla
              child: SumaryWidget())
        ],
      )),
    );
  }

 
}