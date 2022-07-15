import 'package:bavito_mobile_app/ui/models/details.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/category.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/details_tile.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/price_selection_page.dart';
import 'package:bavito_mobile_app/utils/constants/app_colors.dart';
import 'package:bavito_mobile_app/utils/constants/icons_reference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final Details details;

  @override
  void initState() {
    details = Details(
      city: 'Краснодар',
      costMin: 2.5,
      costMax: 4.5,
      layout: Layout.studio,
      ceilingHeight: 2.5,
      isRenovated: true,
      floorMin: 4,
      floorMax: 7,
      windowView: View.outside,
      houseType: [HouseType.monolithic, HouseType.block, HouseType.brick],
      parking: [Parking.ground],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _main = [
      DetailsTile(
        title: 'Купить квартиру',
        iconAsset: AssetIconsReference.flat,
        onPressed: () {
          print('купили');
        },
      ),
      separator,
      DetailsTile(
        title: 'Ростов-на-Дону',
        subtitle: 'Кировский, Ленинский, Пролетарский',
        iconAsset: AssetIconsReference.location,
        onPressed: () {},
      ),
      separator,
      DetailsTile(
        title: '${details.costMin} млн - ${details.costMax} млн',
        iconAsset: AssetIconsReference.rouble,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (_) => const PriceSelectionPage());
        },
      ),
      separator,
    ];

    List<Widget> _objectInfo = [
      DetailsTile(
        title: 'Планировка',
        iconAsset: AssetIconsReference.layout,
        onPressed: () {},
        trailing: details.layout.string,
      ),
      separator,
      DetailsTile(
        title: 'Высота потолков',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {},
        trailing: 'От ${details.ceilingHeight} м',
      ),
      separator,
      DetailsTile(
        title: 'Ремонт',
        iconAsset: AssetIconsReference.renovation,
        onPressed: () {},
        trailing: details.isRenovated ? 'С ремонтом' : 'Без ремонта',
      ),
      separator,
    ];

    List<Widget> _houseInfo = [
      DetailsTile(
        title: 'Этаж',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {},
        trailing: 'От ${details.floorMin} до ${details.floorMax}',
      ),
      separator,
      DetailsTile(
        title: 'Вид из окна',
        iconAsset: AssetIconsReference.sunset,
        onPressed: () {},
        trailing: details.windowView.string,
      ),
      separator,
      DetailsTile(
        title: 'Тип дома',
        tileHeight: 78.h,
        iconAsset: AssetIconsReference.bricks,
        onPressed: () {},
        trailing: details.houseType.map((e) => e.string).join(', '),
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
      DetailsTile(
        title: 'Парковка',
        iconAsset: AssetIconsReference.parking,
        onPressed: () {},
        trailing: details.parking.map((e) => e.string).join(', '),
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
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
                    print(details);
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
