import 'package:flutter/material.dart';
import 'package:flutter_provider_thetechbrothers_practice/home_screen.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/counter_provider.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/favourite_item_provider.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/slider_provider.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/theme_changer_provider.dart';
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
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            themeMode: Provider.of<ThemeChangerProvider>(context).themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.lightBlue,
              primarySwatch: Colors.lightBlue,
              appBarTheme: AppBarTheme(backgroundColor: Colors.lightBlue),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.purple,
              primarySwatch: Colors.purple,
              appBarTheme: AppBarTheme(backgroundColor: Colors.purple),
            ),

            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
