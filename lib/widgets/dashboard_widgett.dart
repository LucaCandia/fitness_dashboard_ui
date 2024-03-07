import 'package:fitness_dashboard_ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 18,),
        HeaderWidget(),
      ],
    );
  }
  
}