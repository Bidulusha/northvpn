import 'package:flutter/material.dart';
import 'navigation_button.dart';
import '../globals.dart';
import '../enums.dart';


class NavigationList extends StatefulWidget {
  NavigationList({super.key});

  @override
  _NavigationListState createState() => _NavigationListState();
}

class _NavigationListState extends State<NavigationList> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationButton("main_page_logo.svg", "Главная", 
            () => {selectedPage.value = PageEnum.mainPage}),
          NavigationButton("configuration_page_logo.svg", "Конфигурация", 
            () => {selectedPage.value = PageEnum.configurationPage}),
          NavigationButton("routing_page_logo.svg", "Маршрутизация", 
            () => {selectedPage.value = PageEnum.routingPage}),
          NavigationButton("settings_page_logo.svg", "Настройки", 
            () => {selectedPage.value = PageEnum.settingsPage})
        ]
      ));
  }
}