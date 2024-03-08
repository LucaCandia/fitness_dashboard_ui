import 'package:fitness_dashboard_ui/data/health_details.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    //creamos una instancia de la clase de healthDetails para usar mas adelante en este codigo.
    final healthDetails = HealthDetails();
    
    return GridView.builder(
      itemCount: healthDetails.healtData.length, //Cantidad de cards a generar dependiendo de que tantos datos de salud hay. 
      shrinkWrap: true,
      physics:  const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 15, mainAxisSpacing: 12),
      itemBuilder: (context, index) => CustomCard(child: Column(


        
      ),), //dijimos que customCard pedia un widget así que lo metmos dentro de un containar. 



    );
  }
}

