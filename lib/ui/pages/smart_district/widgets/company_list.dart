import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(width: 8),
        CompanyItem(imgUrl: 'assets/images/company_type1.png', title: 'Доставка еды'),
        SizedBox(width: 8),
        CompanyItem(imgUrl: 'assets/images/company_type2.jpg', title: 'Рестораны и кафе'),
        SizedBox(width: 8),
        CompanyItem(imgUrl: 'assets/images/company_type3.jpg', title: 'Одежда и аксессуары'),
        SizedBox(width: 8),
      ],
    );
  }
}

class CompanyItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  const CompanyItem({required this.imgUrl, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.r,
      width: 150.r,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
        image: DecorationImage(
          colorFilter: const ColorFilter.mode(
            Color.fromRGBO(0, 0, 0, 0.4),
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
