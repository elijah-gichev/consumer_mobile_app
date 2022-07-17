// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../data/entity/client.dart' as _i19;
import '../ui/models/flats.dart' as _i16;
import '../ui/models/house.dart' as _i17;
import '../ui/models/service.dart' as _i18;
import '../ui/pages/3d_model_page/model_3d_page.dart' as _i8;
import '../ui/pages/auth/screens/login_screen.dart' as _i2;
import '../ui/pages/client_page/client_page.dart' as _i10;
import '../ui/pages/clients_page/clients_page.dart' as _i9;
import '../ui/pages/company_page/company_page.dart' as _i7;
import '../ui/pages/construction_progress/construction_progress_page.dart'
    as _i6;
import '../ui/pages/dash_chat_page/dash_chat_page.dart' as _i11;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i3;
import '../ui/pages/flats/flats_page.dart' as _i5;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/house_page/house_page.dart' as _i4;
import '../ui/pages/my_flats/my_flats_page.dart' as _i12;
import '../ui/pages/smart_district/smart_district_page.dart' as _i13;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen(key: args.key));
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DeclarationPage(key: args.key, flat: args.flat));
    },
    HousePageRoute.name: (routeData) {
      final args = routeData.argsAs<HousePageRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.HousePage(args.house, key: args.key));
    },
    FlatsPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FlatsPage());
    },
    ConstructionProgressPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ConstructionProgressPage());
    },
    CompanyPageRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyPageRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.CompanyPage(
              title: args.title, services: args.services, key: args.key));
    },
    Model3DPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Model3DPage());
    },
    ClientsPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.ClientPage(args.client, key: args.key));
    },
    DashChatPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DashChatPage());
    },
    MyFlatsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyFlatsPageRouteArgs>(
          orElse: () => const MyFlatsPageRouteArgs());
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i12.MyFlatsPage(key: args.key, isFlatsExist: args.isFlatsExist));
    },
    SmartDistrictPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.SmartDistrictPage());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig('/#redirect',
            path: '/', redirectTo: 'loginPage', fullMatch: true),
        _i14.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i14.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i14.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i14.RouteConfig(DashChatPageRoute.name,
              path: 'dashChatPage', parent: HomePageRoute.name),
          _i14.RouteConfig(MyFlatsPageRoute.name,
              path: 'myFlatsPage', parent: HomePageRoute.name),
          _i14.RouteConfig(SmartDistrictPageRoute.name,
              path: 'smartDistrictPage', parent: HomePageRoute.name)
        ]),
        _i14.RouteConfig(LoginScreenRoute.name, path: 'loginPage'),
        _i14.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage'),
        _i14.RouteConfig(HousePageRoute.name, path: 'housePage'),
        _i14.RouteConfig(FlatsPageRoute.name, path: 'flatsPage'),
        _i14.RouteConfig(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage'),
        _i14.RouteConfig(CompanyPageRoute.name, path: 'companyPage'),
        _i14.RouteConfig(Model3DPageRoute.name, path: 'model3DPage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i14.PageRouteInfo<void> {
  const HomePageRoute({List<_i14.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i14.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i15.Key? key})
      : super(LoginScreenRoute.name,
            path: 'loginPage', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DeclarationPage]
class DeclarationPageRoute
    extends _i14.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i15.Key? key, required _i16.Flats flat})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage',
            args: DeclarationPageRouteArgs(key: key, flat: flat));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key, required this.flat});

  final _i15.Key? key;

  final _i16.Flats flat;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key, flat: $flat}';
  }
}

/// generated route for
/// [_i4.HousePage]
class HousePageRoute extends _i14.PageRouteInfo<HousePageRouteArgs> {
  HousePageRoute({required _i17.House house, _i15.Key? key})
      : super(HousePageRoute.name,
            path: 'housePage',
            args: HousePageRouteArgs(house: house, key: key));

  static const String name = 'HousePageRoute';
}

class HousePageRouteArgs {
  const HousePageRouteArgs({required this.house, this.key});

  final _i17.House house;

  final _i15.Key? key;

  @override
  String toString() {
    return 'HousePageRouteArgs{house: $house, key: $key}';
  }
}

/// generated route for
/// [_i5.FlatsPage]
class FlatsPageRoute extends _i14.PageRouteInfo<void> {
  const FlatsPageRoute() : super(FlatsPageRoute.name, path: 'flatsPage');

  static const String name = 'FlatsPageRoute';
}

/// generated route for
/// [_i6.ConstructionProgressPage]
class ConstructionProgressPageRoute extends _i14.PageRouteInfo<void> {
  const ConstructionProgressPageRoute()
      : super(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage');

  static const String name = 'ConstructionProgressPageRoute';
}

/// generated route for
/// [_i7.CompanyPage]
class CompanyPageRoute extends _i14.PageRouteInfo<CompanyPageRouteArgs> {
  CompanyPageRoute(
      {required String title,
      required List<_i18.Service> services,
      _i15.Key? key})
      : super(CompanyPageRoute.name,
            path: 'companyPage',
            args: CompanyPageRouteArgs(
                title: title, services: services, key: key));

  static const String name = 'CompanyPageRoute';
}

class CompanyPageRouteArgs {
  const CompanyPageRouteArgs(
      {required this.title, required this.services, this.key});

  final String title;

  final List<_i18.Service> services;

  final _i15.Key? key;

  @override
  String toString() {
    return 'CompanyPageRouteArgs{title: $title, services: $services, key: $key}';
  }
}

/// generated route for
/// [_i8.Model3DPage]
class Model3DPageRoute extends _i14.PageRouteInfo<void> {
  const Model3DPageRoute() : super(Model3DPageRoute.name, path: 'model3DPage');

  static const String name = 'Model3DPageRoute';
}

/// generated route for
/// [_i9.ClientsPage]
class ClientsPageRoute extends _i14.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i10.ClientPage]
class ClientPageRoute extends _i14.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i19.Client client, _i15.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i19.Client client;

  final _i15.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i11.DashChatPage]
class DashChatPageRoute extends _i14.PageRouteInfo<void> {
  const DashChatPageRoute()
      : super(DashChatPageRoute.name, path: 'dashChatPage');

  static const String name = 'DashChatPageRoute';
}

/// generated route for
/// [_i12.MyFlatsPage]
class MyFlatsPageRoute extends _i14.PageRouteInfo<MyFlatsPageRouteArgs> {
  MyFlatsPageRoute({_i15.Key? key, bool isFlatsExist = true})
      : super(MyFlatsPageRoute.name,
            path: 'myFlatsPage',
            args: MyFlatsPageRouteArgs(key: key, isFlatsExist: isFlatsExist));

  static const String name = 'MyFlatsPageRoute';
}

class MyFlatsPageRouteArgs {
  const MyFlatsPageRouteArgs({this.key, this.isFlatsExist = true});

  final _i15.Key? key;

  final bool isFlatsExist;

  @override
  String toString() {
    return 'MyFlatsPageRouteArgs{key: $key, isFlatsExist: $isFlatsExist}';
  }
}

/// generated route for
/// [_i13.SmartDistrictPage]
class SmartDistrictPageRoute extends _i14.PageRouteInfo<void> {
  const SmartDistrictPageRoute()
      : super(SmartDistrictPageRoute.name, path: 'smartDistrictPage');

  static const String name = 'SmartDistrictPageRoute';
}
