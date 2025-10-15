import 'package:incident/main_page.dart';
import 'package:incident/views/apps/change_language.dart';
import 'package:incident/views/apps/home/dashboard_screen.dart';
import 'package:incident/views/apps/profile/edit_profile.dart';
import 'package:incident/views/apps/profile/profile.dart';
import 'package:incident/views/apps/setting/settings_page.dart';
import 'package:incident/views/apps/setting/widget/select_language.dart';
import 'package:incident/views/apps/splash.dart';
import 'package:incident/views/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helpers/services/auth_services.dart';
import 'views/error_pages/coming_soon_page.dart';
import 'views/error_pages/error_404.dart';
import 'views/error_pages/error_500.dart';
import 'views/error_pages/maintenance_page.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (route == '/auth/login') {
      print("Autorisation route login");
      return null;
    }
    if (!AuthService.isLoggedIn) {
      print("Redirection forcée vers /auth/login");
      return const RouteSettings(name: '/auth/login');
    }
    print("Autorisation route protégée: $route");
    return null;
  }
}

getPageRoute() {
  var routes = [
    GetPage(name: '/dashboard', page: () => const HomePage()),
    GetPage(name: '/settingScreen', page: () => SettingScreen()),
    GetPage(name: '/mainScreen', page: () => MainScreen()),
    GetPage(name: '/splash', page: () => const SplashView()),
    GetPage(
        name: '/profile',
        page: () => const ProfilePage(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/profileDetail',
        page: () => const ProfileDetails(),
        middlewares: [AuthMiddleware()]),

    GetPage(name: '/selectLanguageScreen', page: () => SelectLanguageScreen()),
    GetPage(name: '/changeLanguageScreen', page: () => ChangeLanguageScreen()),

    ///---------------- Auth ----------------///
    GetPage(name: '/auth/login', page: () => const LoginPage()),

    ///---------------- Error ----------------///
    GetPage(
        name: '/coming-soon',
        page: () => const ComingSoonPage(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/error-404',
        page: () => const Error404(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/error-500',
        page: () => const Error500(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/maintenance',
        page: () => const MaintenancePage(),
        middlewares: [AuthMiddleware()]),

    ///---------------- Maps ----------------///
  ];
  return routes
      .map(
        (e) => GetPage(
            name: e.name,
            page: e.page,
            middlewares: e.middlewares,
            transition: Transition.noTransition),
      )
      .toList();
}
