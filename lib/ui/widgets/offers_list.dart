import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/widgets/list_tile_offer.dart';
import 'package:flutter/material.dart';

class OffersList extends StatelessWidget {
  final List<Offer> offers;

  const OffersList({Key? key, required this.offers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Предложения',
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
          const SizedBox(height: 5),
          ..._buildList(),
        ],
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetList = [];
    for (Offer offer in offers) {
      widgetList.add(ListTileOffer(offer: offer));
    }
    return widgetList;
  }
}
