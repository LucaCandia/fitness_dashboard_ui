import 'package:fitness_dashboard_ui/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => _SideMenuWidgetState();
  
  
  
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  //Para poder hacer que sea seleccionable y mas interactivo:
  int selectdIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        //los datos del itemBuilder los va a atraer desde el widgter buildMenuEntry
        //depende del contexto esta vaina devuelve un widget
        itemBuilder: (context, index) => buildMenuEntry(data, index),),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index){
    return Row(
      children: [
        //obtenemos los iconos 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          child: Icon(data.menu[index].icon,
          color: Colors.grey,),
        ),
        // y tambien le mostramos un texto
        Text(
          data.menu[index].title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
      
        
    );
  }


}