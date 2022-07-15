// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../data/entity/client.dart' as _i10;
import '../ui/pages/auth/screens/login_screen.dart' as _i2;
import '../ui/pages/client_page/client_page.dart' as _i6;
import '../ui/pages/clients_page/clients_page.dart' as _i5;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i3;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/house_page/house_page.dart' as _i4;
import '../ui/pages/offers_page/offers_page.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen(key: args.key));
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>(
          orElse: () => const DeclarationPageRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.DeclarationPage(key: args.key));
    },
    HousePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HousePage());
    },
    ClientsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.OffersPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: 'loginPage', fullMatch: true),
        _i8.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i8.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i8.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i8.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name)
        ]),
        _i8.RouteConfig(LoginScreenRoute.name, path: 'loginPage'),
        _i8.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage'),
        _i8.RouteConfig(HousePageRoute.name, path: 'housePage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute({List<_i8.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i8.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i9.Key? key})
      : super(LoginScreenRoute.name,
            path: 'loginPage', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DeclarationPage]
class DeclarationPageRoute extends _i8.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i9.Key? key})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage', args: DeclarationPageRouteArgs(key: key));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HousePage]
class HousePageRoute extends _i8.PageRouteInfo<void> {
  const HousePageRoute() : super(HousePageRoute.name, path: 'housePage');

  static const String name = 'HousePageRoute';
}

/// generated route for
/// [_i5.ClientsPage]
class ClientsPageRoute extends _i8.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i6.ClientPage]
class ClientPageRoute extends _i8.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i10.Client client, _i9.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i10.Client client;

  final _i9.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i7.OffersPage]
class OffersPageRoute extends _i8.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}
