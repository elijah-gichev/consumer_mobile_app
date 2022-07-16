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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(totalCount, (index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),

              color: (currentPage - 1) == index ? Colors.white : Colors.grey,
              height: 3,
              //width: 10,
            ),
          );
        })
      ],
    );
  }
}
