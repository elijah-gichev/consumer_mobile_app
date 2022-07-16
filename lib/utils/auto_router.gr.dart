// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../data/entity/client.dart' as _i15;
import '../ui/models/flats.dart' as _i13;
import '../ui/models/house.dart' as _i14;
import '../ui/pages/auth/screens/login_screen.dart' as _i2;
import '../ui/pages/client_page/client_page.dart' as _i8;
import '../ui/pages/clients_page/clients_page.dart' as _i7;
import '../ui/pages/construction_progress/construction_progress_page.dart'
    as _i6;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i3;
import '../ui/pages/flats/flats_page.dart' as _i5;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/house_page/house_page.dart' as _i4;
import '../ui/pages/my_flats/my_flats_page.dart' as _i10;
import '../ui/pages/offers_page/offers_page.dart' as _i9;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen(key: args.key));
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DeclarationPage(key: args.key, flat: args.flat));
    },
    HousePageRoute.name: (routeData) {
      final args = routeData.argsAs<HousePageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.HousePage(args.house, key: args.key));
    },
    FlatsPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FlatsPage());
    },
    ConstructionProgressPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ConstructionProgressPage());
    },
    ClientsPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.OffersPage());
    },
    MyFlatsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyFlatsPageRouteArgs>(
          orElse: () => const MyFlatsPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i10.MyFlatsPage(key: args.key, isFlatsExist: args.isFlatsExist));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig('/#redirect',
            path: '/', redirectTo: 'loginPage', fullMatch: true),
        _i11.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i11.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i11.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i11.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name),
          _i11.RouteConfig(MyFlatsPageRoute.name,
              path: 'myFlatsPage', parent: HomePageRoute.name)
        ]),
        _i11.RouteConfig(LoginScreenRoute.name, path: 'loginPage'),
        _i11.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage'),
        _i11.RouteConfig(HousePageRoute.name, path: 'housePage'),
        _i11.RouteConfig(FlatsPageRoute.name, path: 'flatsPage'),
        _i11.RouteConfig(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i11.PageRouteInfo<void> {
  const HomePageRoute({List<_i11.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i11.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i12.Key? key})
      : super(LoginScreenRoute.name,
            path: 'loginPage', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DeclarationPage]
class DeclarationPageRoute
    extends _i11.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i12.Key? key, required _i13.Flats flat})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage',
            args: DeclarationPageRouteArgs(key: key, flat: flat));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key, required this.flat});

  final _i12.Key? key;

  final _i13.Flats flat;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key, flat: $flat}';
  }
}

/// generated route for
/// [_i4.HousePage]
class HousePageRoute extends _i11.PageRouteInfo<HousePageRouteArgs> {
  HousePageRoute({required _i14.House house, _i12.Key? key})
      : super(HousePageRoute.name,
            path: 'housePage',
            args: HousePageRouteArgs(house: house, key: key));

  static const String name = 'HousePageRoute';
}

class HousePageRouteArgs {
  const HousePageRouteArgs({required this.house, this.key});

  final _i14.House house;

  final _i12.Key? key;

  @override
  String toString() {
    return 'HousePageRouteArgs{house: $house, key: $key}';
  }
}

/// generated route for
/// [_i5.FlatsPage]
class FlatsPageRoute extends _i11.PageRouteInfo<void> {
  const FlatsPageRoute() : super(FlatsPageRoute.name, path: 'flatsPage');

  static const String name = 'FlatsPageRoute';
}

/// generated route for
/// [_i6.ConstructionProgressPage]
class ConstructionProgressPageRoute extends _i11.PageRouteInfo<void> {
  const ConstructionProgressPageRoute()
      : super(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage');

  static const String name = 'ConstructionProgressPageRoute';
}

/// generated route for
/// [_i7.ClientsPage]
class ClientsPageRoute extends _i11.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i8.ClientPage]
class ClientPageRoute extends _i11.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i15.Client client, _i12.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i15.Client client;

  final _i12.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i9.OffersPage]
class OffersPageRoute extends _i11.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}

/// generated route for
/// [_i10.MyFlatsPage]
class MyFlatsPageRoute extends _i11.PageRouteInfo<MyFlatsPageRouteArgs> {
  MyFlatsPageRoute({_i12.Key? key, bool isFlatsExist = true})
      : super(MyFlatsPageRoute.name,
            path: 'myFlatsPage',
            args: MyFlatsPageRouteArgs(key: key, isFlatsExist: isFlatsExist));

  static const String name = 'MyFlatsPageRoute';
}

class MyFlatsPageRouteArgs {
  const MyFlatsPageRouteArgs({this.key, this.isFlatsExist = true});

  final _i12.Key? key;

  final bool isFlatsExist;

  @override
  String toString() {
    return 'MyFlatsPageRouteArgs{key: $key, isFlatsExist: $isFlatsExist}';
  }
}
