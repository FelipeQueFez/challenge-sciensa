import 'package:challengesciensa/themes/colors.dart';
import 'package:challengesciensa/views/wallet/resources/walletInvestimentsResource.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCustom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartCustomState();
}

class PieChartCustomState extends State {
  var _resource = new WalletInvestimentsResource();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                PieChart(
                  PieChartData(
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 80,
                      sections: showingSections()),
                ),
                SizedBox(
                    width: 290,
                    height: 280,
                    child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(_resource.totalInvestiments,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text(_resource.active,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          ],
                        ))),
              ],
            )));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (i) {
      final double radius = 15;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: colorPrevidencia,
            value: 20,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: colorAcoesFuturo,
            value: 25,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
              color: colorTesouro,
              value: 10,
              title: '',
              radius: radius);
        case 3:
          return PieChartSectionData(
              color: colorRendaFixa,
              value: 15,
              title: '',
              radius: radius);
        case 4:
          return PieChartSectionData(
              color: colorFundos,
              value: 20,
              title: '',
              radius: radius);
        default:
          return null;
      }
    });
  }
}
