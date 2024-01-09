import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/ui/city_show_ui.dart';
import 'package:travel_app/ui/home_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomeUi()),
        GetPage(name: "/city", page: () => const CityShowUi()),
      ],
    );
  }
}
