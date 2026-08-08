import 'package:flutter/material.dart';

import 'package:north_proxy/enums.dart';
import 'package:north_proxy/globals.dart';
import 'package:north_proxy/pop_up_windows/add_configuration.dart';


class PopUpManager extends StatelessWidget {
  const PopUpManager({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: openPopUpWindow, 
      builder: ((context, value, child) {
        switch (openPopUpWindow.value) {
          case PopUpEnum.addConfiguration:
            return const AddConfigurationPopUpWindow();
          default: 
            return const SizedBox.shrink();
          }
        }
      )
    );
  }
}