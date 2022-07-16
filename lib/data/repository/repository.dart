import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

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
    // .map<Graph>(
    //   (e) => Graph.fromMap(e),
    // )
    // .toList();
    return res;
  }
}
