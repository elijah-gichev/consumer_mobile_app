import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageCounter extends StatelessWidget {
  final int currentPage;
  final int totalCount;

  const PageCounter({
    required this.currentPage,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 17.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xff707070),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 2.h,
        ),
        child: Text(
          "$currentPage / $totalCount",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.h,
          ),
        ),
      ),
    );
  }
}
