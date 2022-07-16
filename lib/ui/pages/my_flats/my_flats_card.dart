import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/flats.dart';

class MyFlatsCard extends StatelessWidget {
  final Flats offer;
  final VoidCallback onTap;
  final bool isDone;

  const MyFlatsCard({
    Key? key,
    required this.offer,
    required this.onTap,
    required this.isDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: 10.h,
          bottom: 10.h,
          right: 10.w,
        ),
        height: 120.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                color: Colors.grey[200],
                image: DecorationImage(
                  image: Image.asset(offer.image).image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${offer.object} ${offer.square} м², ${offer.floor} эт.',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    offer.address,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isDone
                          ? const Text(
                              "Сдано",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            )
                          : const Text(
                              "Готово на 76%",
                              style: TextStyle(
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
      ),
    );
  }
}
