import 'package:flutter/material.dart';
import 'package:fitness_dashboard_ui/const/constant.dart';

class CustomCard extends StatelessWidget {
  //parametros requeridos para la card personalizada.

  final Widget child; // Widget que contendrá la tarjeta
  final Color? color;
  final EdgeInsetsGeometry? padding; // Relleno interno opcional de la tarjeta




  const CustomCard({super.key, // Llama al constructor base StatelessWidget 
  required this.child, this.color, this.padding
  });

  @override
  Widget build(BuildContext context) {

    // Método build que construye la representación visual de la tarjeta personalizada
    return Container(
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular((8.0)))),
      color: color ?? cardBackgroundColor, //tengo mi duda de esto.

      child: Padding(padding: padding?? const EdgeInsets.all(12),
      child: child,), //llama al widget exterior

      //Con esto ya logramos un widget reutilizable
    );
  }
}