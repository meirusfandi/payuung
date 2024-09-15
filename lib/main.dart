import 'package:flutter/material.dart';
import 'package:payuung/pages/category_page.dart';
import 'package:payuung/pages/home_page.dart';
import 'package:payuung/pages/profile_page.dart';
import 'package:payuung/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Utils.primaryColor
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder> {
        const HomePage().routeName: (BuildContext context) => const HomePage(),
        const ProfilePage().routeName: (BuildContext context) => const ProfilePage(),
        const CategoryPage().routeName: (BuildContext context) => const CategoryPage(),
      },
    );
  }
}
