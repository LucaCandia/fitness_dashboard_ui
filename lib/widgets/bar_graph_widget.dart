//barra de graficos
import 'dart:ui';

import 'package:fitness_dashboard_ui/data/bar_graph_data.dart';
import 'package:fitness_dashboard_ui/models/graph_model.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
   
    return GridView.builder(

      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 15, mainAxisSpacing: 12.0, childAspectRatio: 5/4),
      itemBuilder: (context, index){
        return CustomCard(
          padding: const EdgeInsets.all(5),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                barGraphData.data[index].label,
                
              ),
            ),
            const SizedBox(height: 12,),
            Expanded(child: BarChart( BarChartData(barGroups: _chartGroups(
              points: barGraphData.data[index].graph,
              color:  barGraphData.data[index].color,),
              borderData: FlBorderData(border: Border()),
              gridData:  FlGridData(show: false),
              titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGraphData.label[value.toInt()],
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            );
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
              ),),),
          ],
          ));
      },
    );


    
  }

  List<BarChartGroupData> _chartGroups({required List<GraphModel> points, required Color color}){

    return points.map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
      BarChartRodData(toY: point.y,
      width: 12,
      color: color.withOpacity(point.y.toInt()>4 ? 1 : 0.4),
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(3),
        topLeft: Radius.circular(3),
      ))
    ]))
    .toList();
  }
}