import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/ui/pages/smart_district/smart_district_page.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AutoTabsRouter.tabBar(
        routes: [
          const ClientsPageRoute(), // проекты
          MyFlatsPageRoute(), // мои объекты
          const SmartDistrictPageRoute(), // умный район
          ClientPageRoute(client: Client.blank()),
          const OffersPageRoute(),
        ],
        builder: (context, child, animation) {
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              selectedItemColor: Colors.orange[600]!,
              iconSize: 26,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Проекты',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.turned_in),
                  label: 'Мои объекты',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Умный район',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: 'Профиль',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_outline_rounded,
                  ),
                  label: 'Чат-бот',
                ),
              ],
              currentIndex: AutoTabsRouter.of(context).activeIndex,
              onTap: AutoTabsRouter.of(context).setActiveIndex,
            ),
          );
        },
      ),
    );
  }
}
