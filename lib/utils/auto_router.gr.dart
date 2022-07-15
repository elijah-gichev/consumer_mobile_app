// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../ui/models/client.dart' as _i8;
import '../ui/pages/client_page/client_page.dart' as _i4;
import '../ui/pages/clients_page/clients_page.dart' as _i3;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i2;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/offers_page/offers_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>(
          orElse: () => const DeclarationPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.DeclarationPage(key: args.key));
    },
    ClientsPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.OffersPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'homePage', fullMatch: true),
        _i6.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i6.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i6.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i6.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name)
        ]),
        _i6.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute({List<_i6.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.DeclarationPage]
class DeclarationPageRoute extends _i6.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i7.Key? key})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage', args: DeclarationPageRouteArgs(key: key));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.ClientsPage]
class ClientsPageRoute extends _i6.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i4.ClientPage]
class ClientPageRoute extends _i6.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i8.Client client, _i7.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i8.Client client;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i5.OffersPage]
class OffersPageRoute extends _i6.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}
