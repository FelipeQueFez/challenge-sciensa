import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCustom extends StatefulWidget {
  @override
  _LineChartCustomState createState() => _LineChartCustomState();
}

class _LineChartCustomState extends State<LineChartCustom> {
  List<Color> gradientColors = [
    const Color(0xffA6AAAC),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(18),
                ),
                color: const Color(0xffFFFFFF)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        )
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.transparent,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.transparent
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: TextStyle(
              color: const Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 12),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'AGO';
              case 1:
                return 'SET';
              case 2:
                return 'OUT';
              case 3:
                return 'NOV';
              case 4:
                return 'DEZ';
              case 5:
                return 'JAN';
              case 6:
                return 'FEV';
              case 7:
                return 'MAR';
              case 8:
                return 'ABR';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: false
        ),
      ),
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4)
          ],
          isCurved: true,
          colors: const [Color(0xFF364DCD)],
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: true,
            dotColor: const Color(0xff364DCD)
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}