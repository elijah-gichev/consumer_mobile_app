import 'dart:convert';

import 'package:bavito_mobile_app/data/repository/control_sum_repository.dart';
import 'package:bavito_mobile_app/ui/models/house.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../ui/models/details.dart';
import '../../ui/models/flats.dart';
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

  Future<List<Flats>> getFilteredFlats(Details details) async {
    final repair = details.isRenovated ? 'С ремонтом' : 'Без ремонта';
    final costFrom = (details.costMin * 1000000).round();
    final costTo = (details.costMax * 1000000).round();
    final roomCount = details.layout.index;
    final heightFrom = details.ceilingHeightMin;
    final floorCountFrom = details.floorMin;
    final floorCountTo = details.floorMax;
    final view = details.windowView.string;
    final material = HouseTypeString.viewToString(details.houseType[0]);

    final Response request = await dio.get(
      dom +
          '/api/flat?cost_from=$costFrom&cost_to=$costTo&room_count=$roomCount&height_from=$heightFrom&repair=$repair&floor_count_from=$floorCountFrom&floor_count_to=$floorCountTo&view=$view&material=$material',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );

    final Map data = jsonDecode(request.toString());
    final res = data["data"]
        .map<Flats>(
          (e) => Flats.fromMap(e),
        )
        .toList();
    return res;
  }

  Future<List<Flats>> getFlats() async {
    final Response request = await dio.get(
      dom + '/api/client/flats',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final data = jsonDecode(request.toString());
    final res = data["data"]
        .map<Flats>(
          (e) => Flats.fromMap(e),
        )
        .toList();
    return res;
  }

  Future<List<House>> getHouses(int controlSum) async {
    // try {
    final Response request = await dio.get(
      dom + '/api/complex?control_sum=$controlSum',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final data = jsonDecode(request.toString());
    final cardTitles = <String>[];
    cardTitles.add(data['card1']);
    cardTitles.add(data['card2']);
    cardTitles.add(data['card3']);
    final res = data["data"]
        .map<House>(
          (e) => House.fromMap(e, cardTitles),
        )
        .toList();
    return res;
  }
}
