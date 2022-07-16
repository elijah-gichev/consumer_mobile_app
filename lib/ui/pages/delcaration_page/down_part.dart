import 'package:bavito_mobile_app/data/repository/repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/graph.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class DownPart extends StatelessWidget {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  final String description;
  DownPart({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Text(
            "Описание",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(description),
          SizedBox(
            height: 49.h,
          ),
          const Text(
            "Характеристики",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
            "Об объекте",
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text(
            "График стоимости квартиры",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          FutureBuilder<List<Graph>>(
              future: getIt<Repository>().getGraph(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      'Что-то пошло не так!',
                    ),
                  );
                }
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: 150,
                  ),
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    // Enable tooltip
                    // tooltipBehavior: TooltipBehavior(enable: true),
                    series: <ChartSeries<Graph, String>>[
                      LineSeries<Graph, String>(
                        dataSource: snapshot.data!,
                        xValueMapper: (Graph graph, _) => graph.year,
                        yValueMapper: (Graph graph, _) => graph.coord,
                        name: 'Sales',
                        // Enable data label
                        // dataLabelSettings: const DataLabelSettings(
                        //   isVisible: true,
                        // ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
