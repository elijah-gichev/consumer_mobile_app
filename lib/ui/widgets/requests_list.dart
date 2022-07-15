import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/widgets/list_tile_request.dart';
import 'package:flutter/material.dart';

class RequestsList extends StatelessWidget {
  final List<Request> requests;

  const RequestsList({Key? key, required this.requests}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Запросы',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Добавить',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          ..._buildList(),
        ],
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetList = [];
    for (Request request in requests) {
      widgetList.add(ListTileRequest(request: request));
      widgetList.add(const SizedBox(height: 10));
    }
    return widgetList;
  }
}
