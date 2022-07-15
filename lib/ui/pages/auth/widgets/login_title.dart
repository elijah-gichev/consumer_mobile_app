import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Placeholder(
          fallbackWidth: 61.w,
          fallbackHeight: 57.h,
        ),
        SizedBox(
          width: 17.w,
        ),
        Text(
          'Consumer app',
          style: TextStyle(
            color: const Color(0xff2B2FA6),
            fontSize: 38.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
