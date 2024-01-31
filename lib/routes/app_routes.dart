import 'package:kpie_assessment/presentation/Login/login_screen.dart';
import 'package:kpie_assessment/presentation/homepagefour_screen/homepagefour_screen.dart';
import 'package:kpie_assessment/presentation/homepagefour_screen/binding/homepagefour_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homepagefourScreen = '/homepagefour_screen';
  static const String loginpage = '/login_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homepagefourScreen,
      page: () => HomepagefourScreen(),
      bindings: [
        HomepagefourBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginPage(),

    )
  ];
}
