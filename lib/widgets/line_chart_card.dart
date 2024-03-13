// ignore_for_file: prefer_const_constructors

import 'package:fitness_dashboard_ui/const/constant.dart';
import 'package:fitness_dashboard_ui/data/line_chart_data.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  //grafico estadistico,
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LinedData();

    return CustomCard(
      child: Column(
        //recontra god reutilizar el widget CustomCard.

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(LineChartData(
                lineTouchData: LineTouchData(
                    handleBuiltInTouches:
                        true), //hacemos que sea interectivo el grafico
                gridData: FlGridData(
                  show: false,
                ), // no queremos ver una cuadricula
                titlesData:
                    /**
           * ahora lo interesante es es que tenemos 4 titulos para mostrar al rededor del grafico
           * lado izquiedo, abajo, arriba y lado derecho. 
           * En nuestro grafico solo vamos a mostrar el titulo izquierdo y el de abajo. Por lo que los demas los dejamo en falso.
           */
                    FlTitlesData(
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        //tiutlos de abajo
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return data.bottomTitle[value.toInt()] != null
                                      ? SideTitleWidget(
                                          axisSide: meta.axisSide,
                                          child: Text(
                                            data.bottomTitle[value.toInt()]
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[400]),
                                          ),
                                        )
                                      : const SizedBox();
                                })),
                        leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return data.leftTitle[value.toInt()] != null
                                ? SideTitleWidget(
                                    axisSide: meta.axisSide,
                                    child: Text(
                                      data.leftTitle[value.toInt()].toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400]),
                                    ),
                                  )
                                : const SizedBox();
                          },
                        ))),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      //debajo de la linea se ve como desenfocado apagao oscuro re facha, bueno es esto:
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            selectionColor.withOpacity(0.5),
                            Color.fromARGB(0, 30, 26, 26),
                          ]),
                      show: true, //desacarviar para entender lo que cambia
                    ),
                    dotData: FlDotData(show: false), //para no ver puntos.
                    spots: data.spots,
                  )
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5)),
          ) //QUIERO investigar bien como funca esto.
        ],
      ),
    );
  }
}
