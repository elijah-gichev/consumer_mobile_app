import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/data/repository/flats_repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
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
          ? Padding(
            padding: const EdgeInsets.all(13.0),
            child: FutureBuilder<List<Flats>>(
                future: getIt<FlatsRepository>().getFlats(),
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
                  return MyFlatsList(
                    offers: snapshot.data!,
                  );
                },
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
