import 'dart:async';
import 'dart:developer';
import 'package:incident/helpers/constant/app_constant.dart';
import 'package:incident/helpers/localizations/app_localization_delegate.dart';
import 'package:incident/helpers/logger/logger.dart';
import 'package:incident/helpers/remote/api_service.dart';
import 'package:incident/helpers/remote/local_notification.dart';
import 'package:incident/helpers/theme/admin_theme.dart';
import 'package:incident/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'helpers/localizations/language.dart';
import 'helpers/services/navigation_service.dart';
import 'helpers/storage/local_storage.dart';
import 'helpers/theme/app_notifier.dart';
import 'helpers/theme/app_style.dart';
import 'helpers/theme/theme_customizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await GetStorage.init();
  await LocalStorage.init();
  await GetStorage.init();
  initLogger();
  APIService.initializeAPIService(
      devBaseUrl: AppConstant.baseURl, prodBaseUrl: AppConstant.baseURl);
  AppStyle.init();
  log("GetToken ${LocalStorage.getAuthToken()}");
  log("GetUserID ${LocalStorage.getUserID()}");
  if (LocalStorage.getTheme() == "Dark") {
    LocalStorage.setTheme("Dark");
  } else {
    LocalStorage.setTheme("Light");
  }
  LocalStorage.setAppLink(false);
  await ThemeCustomizer.init();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
  if (!kIsWeb) {
    LocalNotification().initialize();
  }
  runApp(ChangeNotifierProvider<AppNotifier>(
    create: (context) => AppNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotifier>(
      builder: (_, notifier, ___) {
        AdminTheme.setTheme(context);
        return ScreenUtilInit(
          designSize: kIsWeb ? Size(1280, 832) : Size(430, 932),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            defaultTransition: Transition.native,
            navigatorKey: NavigationService.navigatorKey,
            initialRoute: "/auth/login",
            //initialRoute: "/etapeMission",
            themeMode: LocalStorage.getTheme() == "Dark"
                ? ThemeMode.dark
                : ThemeMode.light,
            getPages: getPageRoute(),
            builder: (_, child) {
              NavigationService.registerContext(_);
              return Directionality(
                  textDirection: AppTheme.textDirection,
                  child: child ?? Container());
            },
            localizationsDelegates: [
              AppLocalizationsDelegate(context),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: Language.getLocales(),
          ),
        );
      },
    );
  }
}
