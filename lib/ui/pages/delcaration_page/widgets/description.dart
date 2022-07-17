import 'package:bavito_mobile_app/ui/models/details.dart';
import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/category.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/details_tile.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/wrappers/string_paser.dart';
import 'package:bavito_mobile_app/utils/constants/app_colors.dart';
import 'package:bavito_mobile_app/utils/constants/icons_reference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Description extends StatelessWidget {
  final Flats flat;

  late final Details details;
  Description({required this.flat, Key? key}) : super(key: key) {
    details = Details(
      city: 'Краснодар',
      costMin: double.parse(flat.price.toStringAsFixed(2)),
      costMax: double.parse((flat.price + 0.5).toStringAsFixed(2)),
      layout: Layout.studio,
      ceilingHeightMin: 2.5,
      ceilingHeightMax: -4.5,
      isRenovated: true,
      floorMin: 4,
      floorMax: 7,
      windowView: View.outside,
      houseType: [HouseType.monolithic, HouseType.block, HouseType.brick],
      parking: [Parking.ground],
    );
  }

  String get _parseCost => StringParser.parseSelectedNumbers(suffix: 'млн', valueMin: details.costMin, valueMax: details.costMax);

  String get _parseCeilingHeight => StringParser.parseSelectedNumbers(suffix: 'м', valueMin: details.ceilingHeightMin, valueMax: details.ceilingHeightMax);

  String get _parseFloors => StringParser.parseSelectedNumbers(suffix: '', valueMin: details.floorMin, valueMax: details.floorMax);

  @override
  Widget build(BuildContext context) {
    List<Widget> _main = [
      DetailsTile(
        title: 'Купить квартиру',
        iconAsset: AssetIconsReference.flat,
        onPressed: () {
          //TODO: функционал
          print('купили');
        },
      ),
      separator,
      DetailsTile(
        title: 'Краснодар',
        subtitle: 'Центральный, Фестивальный, Плодородный',
        iconAsset: AssetIconsReference.location,
        onPressed: () {
          //TODO: функционал
        },
      ),
      separator,
      DetailsTile(
        title: _parseCost,
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
        trailing: details.layout.string,
      ),
      separator,
      DetailsTile(
        title: 'Высота потолков',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {},
        trailing: _parseCeilingHeight,
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
        trailing: _parseFloors,
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
        trailing: details.houseType.map((e) => e.name).join(', '),
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
      DetailsTile(
        title: 'Парковка',
        iconAsset: AssetIconsReference.parking,
        onPressed: () {},
        trailing: details.parking.map((e) => e.name).join(', '),
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
    ];

    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 26.h,
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
    );
  }
}

Widget get separator => const Divider(
      thickness: 1,
      height: 0.4,
      color: AppColors.separatorGrey,
    );
