import 'package:digital_sport/pages/auth/login_page.dart';
import 'package:digital_sport/pages/auth/register_page.dart';
import 'package:digital_sport/pages/current_index_pages.dart';
import 'package:digital_sport/pages/dashboard/dashboard_page.dart';
import 'package:digital_sport/pages/favorite/favorite_page.dart';
import 'package:digital_sport/pages/splash_page.dart';
import 'package:digital_sport/pages/ticket/detail_event_page.dart';
import 'package:digital_sport/pages/ticket/ticket_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Sport',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.rootNamed,
      routes: {
        SplashPage.rootNamed: (context) => const SplashPage(),
        LoginPage.rootNamed: (context) => LoginPage(),
        RegisterPage.rootNamed: (context) => RegisterPage(),
        CurrentIndexPage.rootNamed: (context) => const CurrentIndexPage(),
        FavoritePage.rootNamed: (context) => const FavoritePage(),
        TicketPage.rootNamed: (context) => TicketPage(),
        DetailEventPage.rootNamed: (context) => DetailEventPage(),
      },
    );
  }
}
