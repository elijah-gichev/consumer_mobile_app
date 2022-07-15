import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/pages/my_flats/my_flats_list.dart';
import 'package:flutter/material.dart';

class MyFlatsPage extends StatefulWidget {
  final bool isFlatsExist;

  const MyFlatsPage({
    Key? key,
    this.isFlatsExist = true,
  }) : super(key: key);

  @override
  State<MyFlatsPage> createState() => _MyFlatsPageState();
}

class _MyFlatsPageState extends State<MyFlatsPage> {
  late final Client _client;

  late final Request _request;
  @override
  void initState() {
    _client = Client.blank();
    _request = Request.blank();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Мои объекты",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: widget.isFlatsExist
          ? FutureBuilder<List<Flats>>(
              builder: (context, snapshot) => MyFlatsList(
                offers: snapshot.data!,
              ),
            )
          : Container(
              child: const Center(
                child: Text(
                  "У вас нет квартир ((((((((",
                ),
              ),
            ),
    );
  }
}
