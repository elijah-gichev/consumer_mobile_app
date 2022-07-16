import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(width: 8),
        StoryItem(
          title: 'Транспортная доступность',
          imgAssetPath: 'assets/images/featureFlat1.jpg',
        ),
        SizedBox(width: 8),
        StoryItem(
          title: 'Детские и спортивные площадки',
          imgAssetPath: 'assets/images/featureFlat2.jpg',
        ),
        SizedBox(width: 8),
        StoryItem(
          title: 'Детские сады',
          imgAssetPath: 'assets/images/featureFlat3.jpg',
        ),
        SizedBox(width: 8),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  final String title;
  final String imgAssetPath;
  const StoryItem({required this.title, required this.imgAssetPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0.r),
              color: Colors.grey[200],
              image: DecorationImage(
                image: Image.asset(imgAssetPath).image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
