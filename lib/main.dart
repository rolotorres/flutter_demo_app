import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:flutter_demo_app/src/router/app_routes.dart';
import 'package:flutter_demo_app/src/providers/lang_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LangProvider()),
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.route,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color(0xff011B54)
          ),
          fontFamily: 'Montserrat',
          splashColor: Colors.grey,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xff011B54)
          ),
          
          textTheme: const TextTheme(
            // headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            // headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat'),
          ),
        ),
      ),
    );
  }
}
