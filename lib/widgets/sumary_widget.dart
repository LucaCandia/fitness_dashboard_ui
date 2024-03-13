import 'package:fitness_dashboard_ui/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';

class SumaryWidget extends StatelessWidget {
  const SumaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        SizedBox(height:  20),
        Chart(),
        
      ],
    );
  }
}