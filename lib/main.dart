import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nrtaky/core/helper_functions/global_storage.dart';
import 'package:nrtaky/core/helper_functions/shared_preferences.dart';
import 'package:nrtaky/core/routing/routes.dart';
import 'package:nrtaky/firebase_options.dart';
import 'package:nrtaky/nrtaky_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.appInitialization();
  await GlobalStorage.loadData();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      EasyLocalization(
          supportedLocales: const [Locale('ar'), Locale('en')],
          path: 'assets/translations',
          startLocale: const Locale('en'),
          fallbackLocale: const Locale('en'),
          child: NartakyApp(appRoutes: AppRoutes()))
  );
}
