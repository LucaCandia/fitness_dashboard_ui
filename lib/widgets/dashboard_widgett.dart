import 'package:fitness_dashboard_ui/widgets/activity_details_card.dart';
import 'package:fitness_dashboard_ui/widgets/bar_graph_widget.dart';
import 'package:fitness_dashboard_ui/widgets/header_widget.dart';
import 'package:fitness_dashboard_ui/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  //Un dashboard es una representación visual de la información más importante
  //
  const DashboardWidget({super.key});

  
  @override
  Widget build(BuildContext context) {

   
    // ignore: prefer_const_constructors
    return Column(

      // dividimos en columnas el diseño de la app en 4. barra de busueda,cards con data,stats y stats
      //entre ellos agregamos un espaciado con sidebox.
      //cada uno de estos widgets se crean aparte. 
      //en total estos 4 widgets conformarian el dashboard. 

      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const SizedBox(height: 18,),
        const HeaderWidget (), // barra de busqueda
        const SizedBox(height: 18,),
        const ActivityDetailsCard(),
        const SizedBox(height: 18,),
        const LineChartCard(),
        const SizedBox(height: 18,),
        const BarGraphCard(),
        
      ],
    );
  }
  
}