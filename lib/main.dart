import 'package:flutter/material.dart';
import 'package:flutter_provider/favoriteapp/favorite_screen.dart';
import 'package:flutter_provider/provider/count_provider.dart';
import 'package:flutter_provider/provider/favorite_provider.dart';
import 'package:flutter_provider/provider/multiprovider.dart';
import 'package:flutter_provider/provider/theme_provider.dart';
import 'package:flutter_provider/screens/counter.dart';
import 'package:flutter_provider/screens/exampleone.dart';
import 'package:flutter_provider/stful.dart';
import 'package:flutter_provider/stless.dart';
import 'package:flutter_provider/theme/theme_screen.dart';
import 'package:flutter_provider/why_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CounterProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ExampleoneProvider(),
          ),
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(
          builder: (context) {
            final themeProvider = Provider.of<ThemeChangerProvider>(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: themeProvider.theme,
              theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.amber,
                  iconButtonTheme: IconButtonThemeData(
                      style: ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.pink)))),
              darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  appBarTheme: AppBarTheme(color: Colors.purple),
                  iconButtonTheme: IconButtonThemeData(
                      style: ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.green)))),
              home: ThemeScreen(),
            );
          },
        ));
  }
}
