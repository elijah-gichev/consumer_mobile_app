import 'package:bavito_mobile_app/ui/models/details.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/category.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/details_tile.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/wrappers/selection_bottom_sheet_wrapper.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/widgets/wrappers/string_paser.dart';
import 'package:bavito_mobile_app/utils/constants/app_colors.dart';
import 'package:bavito_mobile_app/utils/constants/icons_reference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late Details details;

  @override
  void initState() {
    details = Details(
      city: 'Краснодар',
      costMin: 2.5,
      costMax: 4.5,
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
    super.initState();
  }

  String get _parseCost => StringParser.parseSelectedNumbers(suffix: 'млн', valueMin: details.costMin, valueMax: details.costMax);

  String get _parseCeilingHeight => StringParser.parseSelectedNumbers(suffix: 'м', valueMin: details.ceilingHeightMin, valueMax: details.ceilingHeightMax);

  String get _parseFloors => StringParser.parseSelectedNumbers(suffix: '', valueMin: details.floorMin, valueMax: details.floorMax);

  Future _showCupertinoLayoutSelection() async {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216.h,
              padding: const EdgeInsets.only(top: 6.0),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: SafeArea(
                top: false,
                child: CupertinoPicker(
                  magnification: 1.22,
                  squeeze: 1.2,
                  useMagnifier: true,
                  itemExtent: 27,
                  // This is called when selected item is changed.
                  onSelectedItemChanged: (int selectedItem) {
                    setState(() {
                      details = details.copyWith(
                        layout: Layout.values[selectedItem],
                      );
                    });
                  },
                  children: List<Widget>.generate(Layout.values.length, (int index) {
                    return Center(
                      child: Text(
                        Layout.values[index].string,
                      ),
                    );
                  }),
                ),
              ),
            ));
  }

  Future _showCupertinoPriceSelection() async {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SelectionBottomSheetWrapper(title: 'Цена', suffixText: '₽'),
      isScrollControlled: true,
    ).then((value) {
      setState(() {
        details = details.copyWith(
          costMin: double.tryParse((value[0] as String)) ?? 0.0,
          costMax: double.tryParse((value[1] as String)) ?? 0.0,
        );
      });
    });
  }

  Future _showCupertinoCeilingHeightSelection() async {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SelectionBottomSheetWrapper(title: 'Высота потолков', suffixText: 'м'),
    ).then((value) {
      setState(() {
        details = details.copyWith(
          ceilingHeightMin: double.tryParse((value[0] as String)) ?? 0.0,
          ceilingHeightMax: double.tryParse((value[1] as String)) ?? 0.0,
        );
      });
    });
  }

  Future _showCupertinoFloorSelection() async {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SelectionBottomSheetWrapper(title: 'Этажи', suffixText: 'э'),
    ).then((value) {
      setState(() {
        details = details.copyWith(
          floorMin: int.tryParse((value[0] as String)) ?? 0,
          floorMax: int.tryParse((value[1] as String)) ?? 0,
        );
      });
    });
  }

  void _showHouseTypeSelection() async {
    await showModalBottomSheet(
      isScrollControlled: true, // required for min/max child size
      context: context,
      builder: (_) {
        return MultiSelectBottomSheet(
          cancelText: Text(
            'Отмена',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          confirmText: Text(
            'ОК',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          items: HouseType.values.map((HouseType e) => MultiSelectItem(e, e.name)).toList(),
          initialValue: details.houseType,
          onConfirm: (List<HouseType> values) {
            setState(() {
              details = details.copyWith(
                houseType: values,
              );
            });
          },
          maxChildSize: 0.8,
        );
      },
    );
  }

  void _showParkingSelection() async {
    await showModalBottomSheet(
      isScrollControlled: true, // required for min/max child size
      context: context,
      builder: (_) {
        return MultiSelectBottomSheet<Parking>(
          cancelText: Text(
            'Отмена',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          confirmText: Text(
            'ОК',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          items: Parking.values.map((Parking e) => MultiSelectItem(e, e.name)).toList(),
          initialValue: details.parking,
          onConfirm: (List<Parking> values) {
            setState(() {
              details = details.copyWith(
                parking: values,
              );
            });
          },
          maxChildSize: 0.8,
        );
      },
    );
  }

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
        title: 'Ростов-на-Дону',
        subtitle: 'Кировский, Ленинский, Пролетарский',
        iconAsset: AssetIconsReference.location,
        onPressed: () {
          //TODO: функционал
        },
      ),
      separator,
      DetailsTile(
        title: _parseCost,
        iconAsset: AssetIconsReference.rouble,
        onPressed: () {
          _showCupertinoPriceSelection();
        },
      ),
      separator,
    ];

    List<Widget> _objectInfo = [
      DetailsTile(
        title: 'Планировка',
        iconAsset: AssetIconsReference.layout,
        onPressed: () {
          _showCupertinoLayoutSelection();
        },
        trailing: details.layout.string,
      ),
      separator,
      DetailsTile(
        title: 'Высота потолков',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {
          _showCupertinoCeilingHeightSelection();
        },
        trailing: _parseCeilingHeight,
      ),
      separator,
      DetailsTile(
        title: 'Ремонт',
        iconAsset: AssetIconsReference.renovation,
        onPressed: () {
          setState(() {
            details = details.copyWith(
              isRenovated: !details.isRenovated,
            );
          });
        },
        trailing: details.isRenovated ? 'С ремонтом' : 'Без ремонта',
      ),
      separator,
    ];

    List<Widget> _houseInfo = [
      DetailsTile(
        title: 'Этаж',
        iconAsset: AssetIconsReference.ceiling,
        onPressed: () {
          _showCupertinoFloorSelection();
        },
        trailing: _parseFloors,
      ),
      separator,
      DetailsTile(
        title: 'Вид из окна',
        iconAsset: AssetIconsReference.sunset,
        onPressed: () {
          setState(() {
            details = details.copyWith(
              windowView: details.windowView == View.window ? View.outside : View.window,
            );
          });
        },
        trailing: details.windowView.string,
      ),
      separator,
      DetailsTile(
        title: 'Тип дома',
        tileHeight: 78.h,
        iconAsset: AssetIconsReference.bricks,
        onPressed: () {
          _showHouseTypeSelection();
        },
        trailing: details.houseType.map((e) => e.name).join(', '),
        trailingStyle: TextStyle(
          fontSize: 13.sp,
        ),
      ),
      separator,
      DetailsTile(
        title: 'Парковка',
        iconAsset: AssetIconsReference.parking,
        onPressed: () {
          _showParkingSelection();
        },
        trailing: details.parking.map((e) => e.name).join(', '),
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
                        width: 15,
                        height: 15,
                        image: AssetImage(
                          AssetIconsReference.chevronLeft,
                        ),
                      ),
                      Text(
                        ' Заявка',
                        style: TextStyle(
                          fontSize: 15.sp,
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
                      fontSize: 15.sp,
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
