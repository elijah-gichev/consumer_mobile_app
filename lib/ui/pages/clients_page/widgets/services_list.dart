import 'package:bavito_mobile_app/data/repository/control_sum_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesList extends StatefulWidget {
  final List<String> cardTitles;
  final int controlSum;
  const ServicesList({required this.controlSum, required this.cardTitles, Key? key}) : super(key: key);

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  late final List<Color> storyColors1;
  late final List<Color> storyColors2;
  List<Color> storyColors = [];

  @override
  void initState() {
    storyColors1 = [Colors.green[400]!, Colors.orange, Colors.red[400]!];
    storyColors2 = [Colors.blue, Colors.deepPurpleAccent[200]!, Colors.deepOrangeAccent];

    if (widget.controlSum == 0) {
      storyColors = storyColors1;
    } else {
      storyColors = storyColors2;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(width: 8),
        StoryItem(
          title: widget.cardTitles[0], //'Экскурсия',
          backgroundColor: storyColors[0],
        ),
        const SizedBox(width: 8),
        StoryItem(
          backgroundColor: storyColors[1],
          title: widget.cardTitles[1], //'Новые проекты и корпуса',
        ),
        const SizedBox(width: 8),
        StoryItem(
          backgroundColor: storyColors[2],
          title: widget.cardTitles[2], //'Условия покупки',
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
