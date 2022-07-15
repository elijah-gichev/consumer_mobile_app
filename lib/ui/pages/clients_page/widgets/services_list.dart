import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ), 
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
          Container(
            height: 130.h,
            width: 80.w,
            margin: const EdgeInsets.only(
              left: 8,
            ),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
