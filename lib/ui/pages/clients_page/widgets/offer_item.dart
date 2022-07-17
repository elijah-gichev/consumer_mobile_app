import 'package:bavito_mobile_app/ui/models/house.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferItem extends StatelessWidget {
  final House offer;
  final VoidCallback onTap;

  const OfferItem({
    Key? key,
    required this.offer,
    required this.onTap,
  }) : super(key: key);

  String imagePath(int index) {
    final num = (index) % 4;
    final path = "assets/images/house$num.jpg";
    print(path);
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0.r),
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: Image.asset(imagePath(offer.id)).image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              offer.address,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(height: 2),
            Text(
              'от ' + offer.minFlatPrice.toStringAsFixed(2) + 'млн. ₽',
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
