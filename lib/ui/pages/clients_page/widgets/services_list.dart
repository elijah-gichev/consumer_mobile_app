import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(width: 8),
        StoryItem(
          title: 'Экскурсия',
          backgroundColor: Colors.green[400]!,
        ),
        const SizedBox(width: 8),
        const StoryItem(
          backgroundColor: Colors.orange,
          title: 'Новые проекты и корпуса',
        ),
        const SizedBox(width: 8),
        StoryItem(
          backgroundColor: Colors.red[400]!,
          title: 'Условия покупки',
        ),
        const SizedBox(width: 8),
        const StoryItem(
          imgPath: 'assets/images/house3.jpg',
          title: 'Новинка!',
        ),
        const SizedBox(width: 8),
        const StoryItem(
          imgPath: 'assets/images/house5.jpg',
          title: 'Новинка!',
        ),
        const SizedBox(width: 8),
        StoryItem(
          backgroundColor: Colors.grey[200]!,
          title: 'Экскурсия',
          titleColor: Colors.black,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  final Color backgroundColor;
  final String? imgPath;
  final String? title;
  final Color? titleColor;
  const StoryItem({
    this.title,
    this.titleColor,
    this.backgroundColor = Colors.blueGrey,
    this.imgPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 80.w,
      decoration: BoxDecoration(
        image: imgPath != null
            ? DecorationImage(
                image: Image.asset(imgPath!).image,
                fit: BoxFit.fill,
                colorFilter: const ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, 0.2),
                  BlendMode.darken,
                ),
              )
            : null,
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: title != null
          ? Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                child: Text(
                  title!,
                  style: TextStyle(
                    color: titleColor ?? Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
