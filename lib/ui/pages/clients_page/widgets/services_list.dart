import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
        SizedBox(width: 8),
        StoryItem(),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 80.w,
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
    );
  }
}
