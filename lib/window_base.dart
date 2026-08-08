import 'package:flutter/material.dart';

import 'package:north_proxy/page.dart';
import 'package:north_proxy/pop_up_manager.dart';
import 'package:north_proxy/navigation_bar/navigation_bar.dart';


class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack( 
      textDirection: TextDirection.ltr,
      children: [ 
        Row(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 240,
              color: Colors.white,
              height: double.infinity,
              child: NavigationBarWidget(),
            ), // Navigation 
            Expanded( // Page view
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Color(0xffF7F8FB),
                  child: NorthVpnPageView()
                )
              ), // Page
          ],
        ),
        PopUpManager()
        // PopUpWindowContainer(name: "name", description: "description", child: SizedBox(height: 40,)),
      ]
    );
  }
}