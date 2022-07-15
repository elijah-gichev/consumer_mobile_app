import 'package:bavito_mobile_app/ui/models/details.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/category.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/details_tile.dart';
import 'package:bavito_mobile_app/utils/constants/app_colors.dart';
import 'package:bavito_mobile_app/utils/constants/icons_reference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _main = [
      DetailsTile(
        title: 'Купить квартиру',
        iconAsset: AssetIconsReference.flat,
        onPressed: () {},
      ),
      separator,
      DetailsTile(
        title: 'Ростов-на-Дону',
        subtitle: 'Кировский, Ленинский, Пролетарский',
        iconAsset: AssetIconsReference.location,
        onPressed: () {},
      ),
      SizedBox(
        height: 13.h,
      ),
      separator,
      DetailsTile(
        title: '2,5 млн - 4 млн',
        iconAsset: AssetIconsReference.rouble,
        onPressed: () {},
      ),
      separator,
    ];

    List<Widget> _objectInfo = [
      DetailsTile(
        title: 'Планировка',
        iconAsset: AssetIconsReference.layout,
        onPressed: () {},
        trailing: 'Смежная', //TODO: extension написать для enum
      ),
      separator,
      DetailsTile(
        title: 'Высота потолков',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {},
        trailing: 'От 2,5 м',
      ),
      separator,
      DetailsTile(
        title: 'Ремонт',
        iconAsset: AssetIconsReference.renovation,
        onPressed: () {},
        trailing: 'Без ремонта',
      ),
      separator,
    ];

    List<Widget> _houseInfo = [
      DetailsTile(
        title: 'Этаж',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {},
        trailing: 'От 3 до 7',
      ),
      separator,
      DetailsTile(
        title: 'Вид из окна',
        iconAsset: AssetIconsReference.sunset,
        onPressed: () {},
        trailing: 'Во двор',
      ),
      separator,
      DetailsTile(
        title: 'Тип дома',
        tileHeight: 78.h,
        iconAsset: AssetIconsReference.bricks,
        onPressed: () {},
        trailing: 'Кирпичный,\nмонолитный, блочный',
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
      DetailsTile(
        title: 'Парковка',
        iconAsset: AssetIconsReference.parking,
        onPressed: () {},
        trailing: 'Наземная, подземная',
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
      DetailsTile(
        title: 'Парковка',
        iconAsset: AssetIconsReference.parking,
        onPressed: () {},
        trailing: 'Наземная, подземная',
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
    ];

    return SizedBox(
      height: 800.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 9.w,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Image(
                        image: AssetImage(
                          AssetIconsReference.chevronLeft,
                        ),
                      ),
                      Text(
                        ' Заявка',
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 177.w,
                  child: Text(
                    'Детали',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final Details details = Details(
                      city: 'Краснодар',
                      costFrom: 2500000,
                      costTo: 4500000,
                      plan: Plan.oneRoomed,
                      ceilingHeight: 2.5,
                      isRenovated: true,
                      floorMin: 4,
                      floorMax: 7,
                      windowView: View.outside,
                      houseType: HouseType.monolithic,
                    );
                  },
                  child: Text(
                    'Готово',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0.w,
                right: 16.0.w,
                top: 12.0.w,
              ),
              child: Column(
                children: [
                  DetailsCategory(title: 'Основное', tiles: _main),
                  SizedBox(
                    height: 15.h,
                  ),
                  DetailsCategory(title: 'Об объекте', tiles: _objectInfo),
                  SizedBox(
                    height: 15.h,
                  ),
                  DetailsCategory(title: 'О доме', tiles: _houseInfo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget get separator => const Divider(
      thickness: 1,
      height: 0.4,
      color: AppColors.separatorGrey,
    );
