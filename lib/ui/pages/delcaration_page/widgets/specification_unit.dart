import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecificationUnit extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  const SpecificationUnit({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              icon,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.sm,
              ),
            ),
          ],
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15.sm,
          ),
        ),
      ],
    );
  }
}
