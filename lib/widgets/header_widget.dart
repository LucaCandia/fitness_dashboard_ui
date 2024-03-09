import 'package:fitness_dashboard_ui/const/constant.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        //Con esto rellanamos el fondo
        filled: true,
        fillColor: cardBackgroundColor,
       // y con esto hacemos que quede redondeado re cheto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        contentPadding:  const EdgeInsets.symmetric(
          vertical: 5,
        ),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search,
        color: Colors.grey,
        size: 21,)
      ),
    );
  }
}