import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/pages/3d_model_page/model_3d_page.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/down_part.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/creating_state.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/photo_cards.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/flats.dart';

import 'package:model_viewer_plus/model_viewer_plus.dart';

class DeclarationPage extends StatelessWidget {
  final imageUrls = [
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
  ];
  final Flats flat;

  DeclarationPage({
    Key? key,
    required this.flat,
  }) : super(key: key);
  List<_SalesData> data = [_SalesData('Jan', 35), _SalesData('Feb', 28), _SalesData('Mar', 34), _SalesData('Apr', 32), _SalesData('May', 40)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Квартира',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        showback: true,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: PhotoCards(
              imageUrls: imageUrls,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Text(
              flat.object,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18.sm,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Row(
              children: [
                const Icon(
                  Icons.fmd_good_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  flat.address,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.yellow[600],
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 5,
                ),
                child: Text(
                  flat.price.toString() + " млн" + ' ₽',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            child: SizedBox(
              height: 8.w,
            ),
            color: Colors.grey[300],
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              context.router.push(const Model3DPageRoute());
            },
            child: SizedBox(
              height: 46.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/3d.png",
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "3D-модель квартиры",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sm,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 8.w,
            ),
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 46.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/calc.png",
                ),
                SizedBox(
                  width: 10.h,
                ),
                Text(
                  "Калькулятор ипотеки",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sm,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              height: 8.w,
            ),
            color: Colors.grey[300],
          ),
          DownPart(
            description:
                "Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты 'Магнит', 'Пятерочка', 'Лента', 'Метро', отделение 'Сбербанка'. В районе работают 6 детских садов, 1 школа. Есть собственная управляющая ко...",
          ),
          Container(
            child: SizedBox(
              height: 8.w,
            ),
            color: Colors.grey[300],
          ),
          flat.isDone ? Container() : const CreatingState(),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
