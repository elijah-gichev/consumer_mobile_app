import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/data/repository/control_sum_repository.dart';
import 'package:bavito_mobile_app/data/repository/repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/ui/models/house.dart';
import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/pages/clients_page/widgets/offer_item.dart';
import 'package:bavito_mobile_app/ui/pages/clients_page/widgets/services_list.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../delcaration_page/widgets/photo_cards.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  final List<String> urlList = [
    "assets/images/house1.jpg",
    "assets/images/house2.jpg",
    "assets/images/house3.jpg",
  ];
  final List<Client> _clients = [
    Client(
      surname: 'Григорьев',
      name: 'Андрей',
      patronymic: 'Максимович',
      phone: '+7 (909) 506-05-32',
    ),
    Client(
      surname: 'Иванов',
      name: 'Иван',
      patronymic: 'Иванович',
      phone: '+7 (909) 506-05-32',
    ),
  ];
  List<Client> _filteredClients = [];

  final TextEditingController _searchController = TextEditingController();

  int controlSum = 0;

  void _searchClients() {
    String query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      _filteredClients = _clients.where(
        (Client client) {
          String fullName = '${client.surname} ${client.name} ${client.patronymic}';
          return fullName.toLowerCase().contains(query);
        },
      ).toList();
    } else {
      _filteredClients = _clients;
    }
    setState(() {});
  }

  @override
  void initState() {
    _searchController.addListener(_searchClients);
    _filteredClients = _clients;

    ControlSumRepository.controller.stream.listen((val) {
      setState(() {
        controlSum = val;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 280.h,
              child: PhotoCards(
                imageUrls: urlList,
              ),
            ),
            SizedBox(height: 15.h),
            FutureBuilder<List<House>>(
              future: getIt<Repository>().getHouses(controlSum),
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
                } else if (snapshot.hasData) {
                  final offers = snapshot.data!;

                  return Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Container(
                            height: 110.h,
                            child: ServicesList(
                              cardTitles: offers[0].cardTitles,
                              controlSum: controlSum,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.h,
                              horizontal: 15,
                            ),
                            child: Offers(offers),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return const SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}

class Offers extends StatelessWidget {
  final List<House> offers;
  const Offers(this.offers, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20.h,
      crossAxisSpacing: 15.w,
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.95,
      physics: const NeverScrollableScrollPhysics(),
      children: offers.map(
        (offer) {
          return OfferItem(
            offer: offer,
            onTap: () {
              context.router.push(HousePageRoute(house: offer));
            },
          );
        },
      ).toList(),
    );
  }
}
