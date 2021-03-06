// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/pages/3d_model_page/model_3d_page.dart';
import 'package:bavito_mobile_app/ui/pages/auth/screens/login_screen.dart';
import 'package:bavito_mobile_app/ui/pages/client_page/client_page.dart';
import 'package:bavito_mobile_app/ui/pages/clients_page/clients_page.dart';
import 'package:bavito_mobile_app/ui/pages/company_page/company_page.dart';
import 'package:bavito_mobile_app/ui/pages/construction_progress/construction_progress_page.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/declaration_page.dart';
import 'package:bavito_mobile_app/ui/pages/flats/flats_page.dart';
import 'package:bavito_mobile_app/ui/pages/dash_chat_page/dash_chat_page.dart';
import 'package:bavito_mobile_app/ui/pages/home_page/home_page.dart';
import 'package:bavito_mobile_app/ui/pages/house_page/house_page.dart';
import 'package:bavito_mobile_app/ui/pages/my_flats/my_flats_page.dart';
import 'package:bavito_mobile_app/ui/pages/smart_district/smart_district_page.dart';

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
          path: 'dashChatPage',
          page: DashChatPage,
        ),
        AutoRoute(
          path: 'myFlatsPage',
          page: MyFlatsPage,
        ),
        AutoRoute(
          path: 'smartDistrictPage',
          page: SmartDistrictPage,
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
    AutoRoute(
      path: 'housePage',
      page: HousePage,
    ),
    AutoRoute(
      path: 'flatsPage',
      page: FlatsPage,
    ),
    AutoRoute(
      path: 'constructionProgressPage',
      page: ConstructionProgressPage,
    ),
    AutoRoute(
      path: 'companyPage',
      page: CompanyPage,
    ),
    AutoRoute(
      path: 'model3DPage',
      page: Model3DPage,
    ),

    // AutoRoute(
    //       path: 'offersPage',
    //       page: OffersPage,
    //     ),
  ],
)
class $AppRouter {}
