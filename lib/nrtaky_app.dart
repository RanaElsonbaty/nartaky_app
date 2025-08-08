import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nrtaky/core/routing/app_routing.dart';
import 'package:nrtaky/core/routing/routes.dart';

class NartakyApp extends StatefulWidget {
  final AppRoutes appRoutes;
  const NartakyApp({super.key, required this.appRoutes});
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  State<NartakyApp> createState() => _NartakyAppState();
}

class _NartakyAppState extends State<NartakyApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        navigatorKey: NartakyApp.navKey,
        title: "Layatofak",
        theme: ThemeData(
          //  fontFamily: AppFonts.font
        ),
        onGenerateRoute: widget.appRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
      ),
    );
  }
}
