import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownPart extends StatelessWidget {
  final String description;
  const DownPart({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text("Описание"),
        SizedBox(height: 11.h,),
        Text(description),
        SizedBox(
          height: 49.h,
        ),
        const Text("Об объекте"),
        
      ],
    );
  }
}
