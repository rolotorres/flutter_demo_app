import 'package:flutter/material.dart';

import 'package:flutter_demo_app/src/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> route = {
    'home': (BuildContext context) => const HomePageScreen(),
    'scan': (BuildContext context) => const ScanPageScreen(),
    'place': (BuildContext context) => const PlacePageScreen(),
    'tutorial': (BuildContext context) => const GuidePageScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const ScanPageScreen()
    );
  }
}