import 'package:bavito_mobile_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsCategory extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  const DetailsCategory({
    required this.title,
    required this.tiles,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.lightGrey,
            ),
          ),
        ),
        ...tiles,
      ],
    );
  }
}
