import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
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
          const ClientsPageRoute(),
          ClientPageRoute(client: Client.blank()),
          const OffersPageRoute(),
        ],
        builder: (context, child, animation) {
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              iconSize: 26,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Clients',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline_rounded),
                  label: 'Client',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Offers',
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
