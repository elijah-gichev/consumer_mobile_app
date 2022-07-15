// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/pages/auth/screens/login_screen.dart';
import 'package:bavito_mobile_app/ui/pages/client_page/client_page.dart';
import 'package:bavito_mobile_app/ui/pages/clients_page/clients_page.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/declaration_page.dart';
import 'package:bavito_mobile_app/ui/pages/home_page/home_page.dart';
import 'package:bavito_mobile_app/ui/pages/my_flats/my_flats_page.dart';
import 'package:bavito_mobile_app/ui/pages/offers_page/offers_page.dart';

@MaterialAutoRouter(
  //replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: 'homePage',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'clientsPage',
          page: ClientsPage,
        ),
        AutoRoute(
          path: 'clientPage',
          page: ClientPage,
        ),
        AutoRoute(
          path: 'offersPage',
          page: OffersPage,
        ),
        AutoRoute(
          path: 'flatsPage',
          page: MyFlatsPage,
        ),
      ],
    ),
    AutoRoute(
      initial: true,
      path: 'loginPage',
      page: LoginScreen,
    ),
    AutoRoute(
      path: 'declarationPage',
      page: DeclarationPage,
    ),
  ],
)
class $AppRouter {}
