import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OportunityList extends StatelessWidget {
  const OportunityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(width: 8),
        OportunityItem(
          imgUrl: 'assets/icons/gkh.jpg',
          title: 'ЖКХ',
        ),
        SizedBox(width: 8),
        OportunityItem(
          imgUrl: 'assets/icons/homoPhone.jpg',
          title: 'Домофон',
        ),
        SizedBox(width: 8),
        OportunityItem(
          imgUrl: 'assets/images/special_offers1.png',
          title: 'Бесплатная доставка',
        ),
        SizedBox(width: 8),
        OportunityItem(
          imgUrl: 'assets/images/special_offers2.png',
          title: 'Планы',
        ),
        SizedBox(width: 8),
        OportunityItem(imgUrl: 'assets/images/special_offers3.jpeg', title: 'Единая карта'),
        SizedBox(width: 8),
        OportunityItem(imgUrl: 'assets/images/special_offers4.jpeg', title: 'Сертификат'),
        SizedBox(width: 8),
        OportunityItem(imgUrl: 'assets/images/special_offers5.jpg', title: 'Акция'),
        SizedBox(width: 8),
      ],
    );
  }
}

class OportunityItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  const OportunityItem({required this.imgUrl, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.r,
      width: 100.r,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
        image: DecorationImage(
          colorFilter: const ColorFilter.mode(
            Color.fromRGBO(0, 0, 0, 0.2),
            BlendMode.darken,
          ),
          image: Image.asset(imgUrl).image,
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
