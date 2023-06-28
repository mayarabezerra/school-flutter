import 'package:flutter/widgets.dart';
import 'package:school/pages/detail/detail_page.dart';
import 'package:school/pages/home/home_page.dart';

class AppRoutes {
  static String initialRoute = '/';
  static String detail = '/detailItem';

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      initialRoute  : (context) => const HomePage(),
      detail: (context) => const DetailPage(),
    };
  }
}