// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../data/entity/client.dart' as _i17;
import '../ui/models/flats.dart' as _i15;
import '../ui/models/house.dart' as _i16;
import '../ui/pages/auth/screens/login_screen.dart' as _i2;
import '../ui/pages/client_page/client_page.dart' as _i9;
import '../ui/pages/clients_page/clients_page.dart' as _i8;
import '../ui/pages/construction_progress/construction_progress_page.dart'
    as _i7;
import '../ui/pages/delcaration_page/declaration_page.dart' as _i3;
import '../ui/pages/flats/flats_page.dart' as _i6;
import '../ui/pages/home_page/home_page.dart' as _i1;
import '../ui/pages/house_page/house_page.dart' as _i4;
import '../ui/pages/my_flats/my_flats_page.dart' as _i11;
import '../ui/pages/offers_page/offers_page.dart' as _i10;
import '../ui/pages/smart_district/smart_district_page.dart' as _i12;
import '../ui/pages/video_page/video_page.dart' as _i5;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen(key: args.key));
    },
    DeclarationPageRoute.name: (routeData) {
      final args = routeData.argsAs<DeclarationPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DeclarationPage(key: args.key, flat: args.flat));
    },
    HousePageRoute.name: (routeData) {
      final args = routeData.argsAs<HousePageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.HousePage(args.house, key: args.key));
    },
    VideoPageRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPageRouteArgs>(
          orElse: () => const VideoPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.VideoPage(key: args.key, videoFile: args.videoFile));
    },
    FlatsPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FlatsPage());
    },
    ConstructionProgressPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ConstructionProgressPage());
    },
    ClientsPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ClientsPage());
    },
    ClientPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.ClientPage(args.client, key: args.key));
    },
    OffersPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.OffersPage());
    },
    MyFlatsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyFlatsPageRouteArgs>(
          orElse: () => const MyFlatsPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i11.MyFlatsPage(key: args.key, isFlatsExist: args.isFlatsExist));
    },
    SmartDistrictPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SmartDistrictPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig('/#redirect',
            path: '/', redirectTo: 'loginPage', fullMatch: true),
        _i13.RouteConfig(HomePageRoute.name, path: 'homePage', children: [
          _i13.RouteConfig(ClientsPageRoute.name,
              path: 'clientsPage', parent: HomePageRoute.name),
          _i13.RouteConfig(ClientPageRoute.name,
              path: 'clientPage', parent: HomePageRoute.name),
          _i13.RouteConfig(OffersPageRoute.name,
              path: 'offersPage', parent: HomePageRoute.name),
          _i13.RouteConfig(MyFlatsPageRoute.name,
              path: 'myFlatsPage', parent: HomePageRoute.name),
          _i13.RouteConfig(SmartDistrictPageRoute.name,
              path: 'smartDistrictPage', parent: HomePageRoute.name)
        ]),
        _i13.RouteConfig(LoginScreenRoute.name, path: 'loginPage'),
        _i13.RouteConfig(DeclarationPageRoute.name, path: 'declarationPage'),
        _i13.RouteConfig(HousePageRoute.name, path: 'housePage'),
        _i13.RouteConfig(VideoPageRoute.name, path: 'videoPage'),
        _i13.RouteConfig(FlatsPageRoute.name, path: 'flatsPage'),
        _i13.RouteConfig(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<void> {
  const HomePageRoute({List<_i13.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: 'homePage', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i13.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i14.Key? key})
      : super(LoginScreenRoute.name,
            path: 'loginPage', args: LoginScreenRouteArgs(key: key));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DeclarationPage]
class DeclarationPageRoute
    extends _i13.PageRouteInfo<DeclarationPageRouteArgs> {
  DeclarationPageRoute({_i14.Key? key, required _i15.Flats flat})
      : super(DeclarationPageRoute.name,
            path: 'declarationPage',
            args: DeclarationPageRouteArgs(key: key, flat: flat));

  static const String name = 'DeclarationPageRoute';
}

class DeclarationPageRouteArgs {
  const DeclarationPageRouteArgs({this.key, required this.flat});

  final _i14.Key? key;

  final _i15.Flats flat;

  @override
  String toString() {
    return 'DeclarationPageRouteArgs{key: $key, flat: $flat}';
  }
}

/// generated route for
/// [_i4.HousePage]
class HousePageRoute extends _i13.PageRouteInfo<HousePageRouteArgs> {
  HousePageRoute({required _i16.House house, _i14.Key? key})
      : super(HousePageRoute.name,
            path: 'housePage',
            args: HousePageRouteArgs(house: house, key: key));

  static const String name = 'HousePageRoute';
}

class HousePageRouteArgs {
  const HousePageRouteArgs({required this.house, this.key});

  final _i16.House house;

  final _i14.Key? key;

  @override
  String toString() {
    return 'HousePageRouteArgs{house: $house, key: $key}';
  }
}

/// generated route for
/// [_i5.VideoPage]
class VideoPageRoute extends _i13.PageRouteInfo<VideoPageRouteArgs> {
  VideoPageRoute({_i14.Key? key, String? videoFile})
      : super(VideoPageRoute.name,
            path: 'videoPage',
            args: VideoPageRouteArgs(key: key, videoFile: videoFile));

  static const String name = 'VideoPageRoute';
}

class VideoPageRouteArgs {
  const VideoPageRouteArgs({this.key, this.videoFile});

  final _i14.Key? key;

  final String? videoFile;

  @override
  String toString() {
    return 'VideoPageRouteArgs{key: $key, videoFile: $videoFile}';
  }
}

/// generated route for
/// [_i6.FlatsPage]
class FlatsPageRoute extends _i13.PageRouteInfo<void> {
  const FlatsPageRoute() : super(FlatsPageRoute.name, path: 'flatsPage');

  static const String name = 'FlatsPageRoute';
}

/// generated route for
/// [_i7.ConstructionProgressPage]
class ConstructionProgressPageRoute extends _i13.PageRouteInfo<void> {
  const ConstructionProgressPageRoute()
      : super(ConstructionProgressPageRoute.name,
            path: 'constructionProgressPage');

  static const String name = 'ConstructionProgressPageRoute';
}

/// generated route for
/// [_i8.ClientsPage]
class ClientsPageRoute extends _i13.PageRouteInfo<void> {
  const ClientsPageRoute() : super(ClientsPageRoute.name, path: 'clientsPage');

  static const String name = 'ClientsPageRoute';
}

/// generated route for
/// [_i9.ClientPage]
class ClientPageRoute extends _i13.PageRouteInfo<ClientPageRouteArgs> {
  ClientPageRoute({required _i17.Client client, _i14.Key? key})
      : super(ClientPageRoute.name,
            path: 'clientPage',
            args: ClientPageRouteArgs(client: client, key: key));

  static const String name = 'ClientPageRoute';
}

class ClientPageRouteArgs {
  const ClientPageRouteArgs({required this.client, this.key});

  final _i17.Client client;

  final _i14.Key? key;

  @override
  String toString() {
    return 'ClientPageRouteArgs{client: $client, key: $key}';
  }
}

/// generated route for
/// [_i10.OffersPage]
class OffersPageRoute extends _i13.PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offersPage');

  static const String name = 'OffersPageRoute';
}

/// generated route for
/// [_i11.MyFlatsPage]
class MyFlatsPageRoute extends _i13.PageRouteInfo<MyFlatsPageRouteArgs> {
  MyFlatsPageRoute({_i14.Key? key, bool isFlatsExist = true})
      : super(MyFlatsPageRoute.name,
            path: 'myFlatsPage',
            args: MyFlatsPageRouteArgs(key: key, isFlatsExist: isFlatsExist));

  static const String name = 'MyFlatsPageRoute';
}

class MyFlatsPageRouteArgs {
  const MyFlatsPageRouteArgs({this.key, this.isFlatsExist = true});

  final _i14.Key? key;

  final bool isFlatsExist;

  @override
  String toString() {
    return 'MyFlatsPageRouteArgs{key: $key, isFlatsExist: $isFlatsExist}';
  }
}

/// generated route for
/// [_i12.SmartDistrictPage]
class SmartDistrictPageRoute extends _i13.PageRouteInfo<void> {
  const SmartDistrictPageRoute()
      : super(SmartDistrictPageRoute.name, path: 'smartDistrictPage');

  static const String name = 'SmartDistrictPageRoute';
}
