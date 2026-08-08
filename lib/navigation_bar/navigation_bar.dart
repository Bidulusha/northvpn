import 'package:flutter/material.dart';
import 'navigation_app_name.dart';
import 'navigation_list.dart';


class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: EdgeInsetsGeometry.only(left: 17),
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NavigationAppName(), // NORTH VPN NAME WIDGET
          SizedBox(height: 30,), // INDENT BETWEEN
          Padding(
            padding: EdgeInsetsGeometry.only(left: 15),
            child: Text("НАВИГАЦИЯ", textDirection: TextDirection.ltr, style: TextStyle(color: Color(0xff89909E)), textAlign: TextAlign.start,)
          ), // НАВИГАЦИЯ TEXT
          SizedBox(height: 10,), // INDENT BETWEE
          NavigationList() // NAVIGATION BUTTONS WIDGET
        ],
      )
    );
  }
}