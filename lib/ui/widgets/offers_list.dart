import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/common/list_tile_offer.dart';
import 'package:flutter/material.dart';

class OffersList extends StatelessWidget {
  final List<Offer> offers;

  const OffersList({Key? key, required this.offers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offers[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ListTileOffer(
            offer: offer,
            onTap: () {},
          ),
        );
      },
    );
  }
}
