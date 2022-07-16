import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../ui/models/details.dart';
import '../../ui/models/graph.dart';

@singleton
class Repository {
  final String dom = 'https://api-consumer-app.herokuapp.com';
  final Dio dio = Dio();
  final token = 1;

  // api/flat/graph/376

  Future<List<Graph>> getGraph() async {
    final Response request = await dio.get(
      dom + '/api/flat/graph/200',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final Map data = jsonDecode(request.toString());
    List<Graph> res = [];
    data.forEach(
      (key, value) {
        res.add(
          Graph(  
            coord: value,
            year: key,
          ),
        );
      },
    );
    return res;
  }
  Future<List<Graph>> getFilteredFlats(Details data) async {
    final Response request = await dio.get(
      dom + '/api/flat?cost_from=2500000&cost_to=4500000&room_count=2&height_from=2.5&repair=С ремонтом&floor_count_from=4&floor_count_to=12&view=На улицу&material=Монолитный',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final Map data = jsonDecode(request.toString());
    List<Graph> res = [];
    data.forEach(
      (key, value) {
        res.add(
          Graph(
            coord: value,
            year: key,
          ),
        );
      },
    );
    return res;
  }
}
