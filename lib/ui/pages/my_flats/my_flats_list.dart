import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/declaration_page.dart';
import 'package:bavito_mobile_app/ui/pages/my_flats/my_flats_card.dart';
import 'package:bavito_mobile_app/ui/pages/offers_page/widgets/list_tile_offer.dart';
import 'package:flutter/material.dart';

import '../../../utils/auto_router.gr.dart';

class MyFlatsList extends StatelessWidget {
  final List<Flats> offers;

  const MyFlatsList({Key? key, required this.offers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: offers.length,
      itemBuilder: ((context, index) {
        final offer = offers[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: MyFlatsCard(
            offer: offer,
            onTap: () {
              context.router.push(
                DeclarationPageRoute(
                  flat: offers[index],
                ),
              );
            },
            isDone: offers[index].isDone,
          ),
        );
      }),
    );
  }
}
