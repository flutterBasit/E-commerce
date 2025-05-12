import 'package:e_commerce/Resources/Routes/RouteNames.dart';
import 'package:e_commerce/View/IntroScreen.dart';
import 'package:e_commerce/View/SigninScreen.dart';
import 'package:e_commerce/View/SplashScreen.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> routes = [
    GetPage(name: Routenames.SplashScreen, page: () => SplashScreen()),
    GetPage(name: Routenames.introScreen, page: () => Introscreen()),
    GetPage(name: Routenames.signinScreen, page: () => Signinscreen())
  ];
}
