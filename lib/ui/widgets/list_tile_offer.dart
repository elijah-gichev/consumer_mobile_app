import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:flutter/material.dart';

class ListTileOffer extends StatelessWidget {
  final Offer offer;

  const ListTileOffer({
    Key? key,
    required this.offer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    image: DecorationImage(
                      image: Image.network(offer.image).image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${offer.object} ${offer.square} кв. м.,\n${offer.floor} эт.',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        offer.address,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.yellow[600],
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 5),
                            child: Text(
                              offer.price + ' ₽',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            offer.date,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
              height: 25,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
