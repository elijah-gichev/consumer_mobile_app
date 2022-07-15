import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTile extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final String iconAsset;
  final String? trailing;
  final TextStyle? trailingStyle;
  final VoidCallback onPressed;
  final double? iconWidth;
  final double? iconHeight;
  final double? tileHeight;

  const DetailsTile(
      {required this.title,
      required this.iconAsset,
      required this.onPressed,
      this.tileHeight,
      this.subtitleStyle,
      this.titleStyle,
      this.subtitle,
      this.trailing,
      this.iconWidth,
      this.iconHeight,
      this.trailingStyle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tileHeight ?? 60.h,
      child: ListTile(
        horizontalTitleGap: 0.0,
        contentPadding: EdgeInsets.zero,
        dense: true,
        leading: Image(
          image: AssetImage(
            iconAsset,
          ),
          width: iconWidth,
          height: iconHeight,
        ),
        title: Text(
          title,
          style: titleStyle ??
              TextStyle(
                fontSize: 15.sp,
              ),
        ),
        subtitle: (subtitle != null)
            ? Text(
                subtitle!,
                style: titleStyle ??
                    TextStyle(
                      fontSize: 12.sp,
                    ),
              )
            : null,
        trailing: (trailing != null)
            ? Text(
                trailing!,
                style: trailingStyle ??
                    TextStyle(
                      fontSize: 15.sp,
                    ),
              )
            : null,
      ),
    );
  }
}
