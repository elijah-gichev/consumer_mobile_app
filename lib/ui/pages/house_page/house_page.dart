import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/house.dart';
import 'package:bavito_mobile_app/ui/pages/house_page/widgets/features_list.dart';
import 'package:bavito_mobile_app/ui/pages/house_page/widgets/photo_cards.dart';
import 'package:bavito_mobile_app/ui/pages/house_page/widgets/position_card.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:bavito_mobile_app/utils/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HousePage extends StatelessWidget {
  final House house;
  final List<String> urlList = [
    "assets/images/house1.jpg",
    "assets/images/house2.jpg",
    "assets/images/house3.jpg",
  ];

  HousePage(this.house, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          house.address,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        showback: true,
        buttonColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.2),
                    BlendMode.darken,
                  ),
                  child: SizedBox(
                    height: 0.8.sh,
                    child: PhotoCards(
                      imageUrls: urlList,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: SizedBox(
                    height: 250.h,
                    width: 0.9.sw,
                    child: Column(
                      children: [
                        Text(
                          house.description,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        HouseTile(
                          leadingIcon: Icons.house,
                          title: 'Квартиры',
                          subtitle: 'от ${house.minFlatPrice} млн. Р',
                          onTap: () {
                            context.router.push(const FlatsPageRoute());
                          },
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 2,
                        ),
                        HouseTile(
                          leadingIcon: Icons.local_shipping,
                          title: 'Ход строительства',
                          subtitle: 'Обновлено ${DateFormater.formatDate(house.updateDate)}',
                          onTap: () {
                            context.router.push(const ConstructionProgressPageRoute());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Особенности',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: const Text('См. все'),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h),
                  height: 170.h,
                  child: const FeaturesList(),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                height: 1,
                thickness: 0,
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 20.h),
              child: PositionCard(
                onTap: () {},
                house: house,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HouseTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final VoidCallback onTap;
  const HouseTile({
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        horizontalTitleGap: 0,
        contentPadding: const EdgeInsets.all(0),
        leading: Icon(
          leadingIcon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
