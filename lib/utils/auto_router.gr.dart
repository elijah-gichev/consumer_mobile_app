// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/models/client.dart' as _i7;
import '../ui/pages/client_page/client_page.dart' as _i3;
import '../ui/pages/clients_page/clients_page.dart' as _i2;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/offers_page/offers_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ClientsPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OffersPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'homePage', fullMatch: true),
        _i5.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i5.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i5.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i5.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ClientsPage]
class ClientsPageRoute extends _i5.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i3.ClientPage]
class ClientPageRoute extends _i5.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i7.Client client, _i6.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i7.Client client;

  final _i6.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i4.OffersPage]
class OffersPageRoute extends _i5.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}
