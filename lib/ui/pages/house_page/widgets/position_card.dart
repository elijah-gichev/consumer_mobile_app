import 'package:bavito_mobile_app/ui/models/house.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PositionCard extends StatelessWidget {
  final House house;
  final VoidCallback onTap;
  const PositionCard({required this.house, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Местоположение',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 160.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0.r),
              color: Colors.grey[200],
              image: DecorationImage(
                image: Image.asset('assets/images/flatMap.png').image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              house.name,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
            subtitle: Text(
              house.address,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            trailing: Container(
              height: 50.r,
              width: 50.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                color: Colors.grey[200],
                image: DecorationImage(
                  image: Image.asset(house.flats[0].image).image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: const [
                Text(
                  'Проектная документация',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 18,
                )
              ],
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
        ],
      ),
    );
  }
}
