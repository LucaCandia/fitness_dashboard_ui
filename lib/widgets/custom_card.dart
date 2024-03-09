import 'package:flutter/material.dart';
import 'package:fitness_dashboard_ui/const/constant.dart';

class CustomCard extends StatelessWidget {
  //parametros requeridos para la card personalizada.

  final Widget child; // Widget que contendrá la tarjeta
  final Color? color;
  final EdgeInsetsGeometry? padding; // Relleno interno opcional de la tarjeta

  const CustomCard(
      {super.key, // Llama al constructor base StatelessWidget
      required this.child,
      this.color,
      this.padding});

  @override
  Widget build(BuildContext context) {
    // Método build que construye la representación visual de la tarjeta personalizada
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular((8.0)),),
        color: color ??
            cardBackgroundColor, //importante donde quedo esto xq antes estaba por fuera del boxDecoration y me rompia todo. Ya que no se puede enviar un color y decoracion al mismo tiempo
      ),
      

      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: child,
      ), //llama al widget exterior

      //Con esto ya logramos un widget reutilizable
    );
  }
}
