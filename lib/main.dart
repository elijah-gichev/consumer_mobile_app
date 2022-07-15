import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:bavito_mobile_app/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: SimpleBlocObserver(),
  );
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            // Define the default brightness and colors.
            backgroundColor: const Color(0xffE5E5E5),
            primaryColor: const Color(0xffFFD80E),
            //colorScheme:  ColorScheme.

            brightness: Brightness.light,
            chipTheme: const ChipThemeData(
              selectedColor: Colors.black,
              disabledColor: Color(0xffE5E5E5),
              backgroundColor: Colors.transparent,
            ),

            // Define the default font family.
            //fontFamily: 'SourceSansPro',

            // Define the default `TextTheme`. Use this to specify the default
            // text styling for headlines, titles, bodies of text, and more.
            // textTheme: const TextTheme(
            //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            // ),
          ),
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
