import 'package:coffee_manager/config/routes/routes.dart';
import 'package:coffee_manager/config/themes/dark_theme.dart';
import 'package:coffee_manager/config/themes/light_theme.dart';
import 'package:coffee_manager/constants/route_name.dart';
import 'package:coffee_manager/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, themeObj, _) => MaterialApp(
          title: 'Coffee Manager',
          debugShowCheckedModeBanner: false,
          themeMode: themeObj.mode,
          theme: lightTheme,
          darkTheme: darkTheme,
          initialRoute: RouteName.home,
          routes: routes,
        ),
      ),
    );
  }
}
