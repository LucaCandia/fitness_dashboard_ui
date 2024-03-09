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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 15, mainAxisSpacing: 12.0, ),
      itemBuilder: (context, index) => CustomCard(child: Column(
        //alineamos todo al centro para que se muestren los datos en el centro valga la redundancia jadsaj 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //icono
          Image.asset(healthDetails.healtData[index].icon,
          width: 30,
          height: 30,),
          Padding(padding: const EdgeInsets.only(top: 15, bottom: 4),
          child: Text(
            healthDetails.healtData[index].value,
            style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,),
          ),),
          Text(healthDetails.healtData[index].title,
          style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,),)

        ],
          

        
      ),),



    );
  }
}

