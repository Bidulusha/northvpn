import 'package:north_proxy/enums.dart';
import 'package:flutter/material.dart';
import 'main_page/page_base.dart';
import 'configuration_page/page_base.dart';
import 'globals.dart';


class NorthVpnPageView extends StatefulWidget {
  const NorthVpnPageView({super.key});

  @override
  _NorthVpnPageViewState createState() => _NorthVpnPageViewState();
}

class _NorthVpnPageViewState extends State<NorthVpnPageView> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPage, 
      builder: ((context, value, child) {
        switch (selectedPage.value) {
          case PageEnum.mainPage:
            return MainPageView();
          case PageEnum.configurationPage:
            return ConfigurationPageView();
          default:
            return MainPageView();
        }
      })
    );
    // MainPageView();
  }
}