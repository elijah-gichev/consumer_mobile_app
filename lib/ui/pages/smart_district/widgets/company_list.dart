import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/data/repository/service_repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(width: 8),
        CompanyItem(
          imgUrl: 'assets/images/company_type1.png',
          title: 'Доставка еды',
          onTap: () {
            final services = getIt<ServiceRepository>().getDeliveryServices();
            context.router.push(
              CompanyPageRoute(
                services: services,
                title: 'Доставка еды',
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        CompanyItem(
          imgUrl: 'assets/images/company_type2.jpg',
          title: 'Рестораны и кафе',
          onTap: () {
            final services = getIt<ServiceRepository>().getRestaurantServices();
            context.router.push(
              CompanyPageRoute(
                services: services,
                title: 'Рестораны и кафе',
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        CompanyItem(
          imgUrl: 'assets/images/company_type3.jpg',
          title: 'Одежда и аксессуары',
          onTap: () {
            final services = getIt<ServiceRepository>().getClothesServices();
            context.router.push(
              CompanyPageRoute(
                services: services,
                title: 'Одежда и аксессуары',
              ),
            );
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class CompanyItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final VoidCallback onTap;
  const CompanyItem({required this.onTap, required this.imgUrl, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
