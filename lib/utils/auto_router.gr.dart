// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../data/entity/client.dart' as _i12;
import '../ui/models/house.dart' as _i11;
import '../ui/pages/auth/screens/login_screen.dart' as _i2;
import '../ui/pages/client_page/client_page.dart' as _i6;
import '../ui/pages/clients_page/clients_page.dart' as _i5;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i3;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/house_page/house_page.dart' as _i4;
import '../ui/pages/my_flats/my_flats_page.dart' as _i8;
import '../ui/pages/offers_page/offers_page.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen(key: args.key));
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>(
          orElse: () => const DeclarationPageRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.DeclarationPage(key: args.key));
    },
    HousePageRoute.name: (routeData) {
      final args = routeData.argsAs<HousePageRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.HousePage(args.house, key: args.key));
    },
    ClientsPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.OffersPage());
    },
    MyFlatsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyFlatsPageRouteArgs>(
          orElse: () => const MyFlatsPageRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.MyFlatsPage(key: args.key, isFlatsExist: args.isFlatsExist));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: 'loginPage', fullMatch: true),
        _i9.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i9.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i9.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i9.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name),
          _i9.RouteConfig(MyFlatsPageRoute.name,
              path: 'flatsPage', parent: HomePageRoute.name)
        ]),
        _i9.RouteConfig(LoginScreenRoute.name, path: 'loginPage'),
        _i9.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage'),
        _i9.RouteConfig(HousePageRoute.name, path: 'housePage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute({List<_i9.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i9.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i10.Key? key})
      : super(LoginScreenRoute.name,
            path: 'loginPage', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DeclarationPage]
class DeclarationPageRoute extends _i9.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i10.Key? key})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage', args: DeclarationPageRouteArgs(key: key));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HousePage]
class HousePageRoute extends _i9.PageRouteInfo<HousePageRouteArgs> {
  HousePageRoute({required _i11.House house, _i10.Key? key})
      : super(HousePageRoute.name,
            path: 'housePage',
            args: HousePageRouteArgs(house: house, key: key));

  static const String name = 'HousePageRoute';
}

class HousePageRouteArgs {
  const HousePageRouteArgs({required this.house, this.key});

  final _i11.House house;

  final _i10.Key? key;

  @override
  String toString() {
    return 'HousePageRouteArgs{house: $house, key: $key}';
  }
}

/// generated route for
/// [_i5.ClientsPage]
class ClientsPageRoute extends _i9.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i6.ClientPage]
class ClientPageRoute extends _i9.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i12.Client client, _i10.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i12.Client client;

  final _i10.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i7.OffersPage]
class OffersPageRoute extends _i9.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}

/// generated route for
/// [_i8.MyFlatsPage]
class MyFlatsPageRoute extends _i9.PageRouteInfo<MyFlatsPageRouteArgs> {
  MyFlatsPageRoute({_i10.Key? key, bool isFlatsExist = true})
      : super(MyFlatsPageRoute.name,
            path: 'flatsPage',
            args: MyFlatsPageRouteArgs(key: key, isFlatsExist: isFlatsExist));

  static const String name = 'MyFlatsPageRoute';
}

class MyFlatsPageRouteArgs {
  const MyFlatsPageRouteArgs({this.key, this.isFlatsExist = true});

  final _i10.Key? key;

  final bool isFlatsExist;

  @override
  String toString() {
    return 'MyFlatsPageRouteArgs{key: $key, isFlatsExist: $isFlatsExist}';
  }
}
