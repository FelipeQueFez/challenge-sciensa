import 'package:challengesciensa/views/wallet/resources/walletInvestimentsResource.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
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
            color: const Color(0xff28388F),
            value: 20,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffFF9800),
            value: 25,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
              color: const Color(0xffAD1457),
              value: 10,
              title: '',
              radius: radius);
        case 3:
          return PieChartSectionData(
              color: const Color(0xff179016),
              value: 15,
              title: '',
              radius: radius);
        case 4:
          return PieChartSectionData(
              color: const Color(0xff00BDC4),
              value: 20,
              title: '',
              radius: radius);
        default:
          return null;
      }
    });
  }
}
