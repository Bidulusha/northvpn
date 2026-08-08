import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationAppName extends StatelessWidget {
  const NavigationAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.only(top: 37),
        child: Row( 
          textDirection: TextDirection.ltr,
          children: [
            SvgPicture.asset("assets/svg/northvpn_logo.svg", semanticsLabel: "Northvpn logo"),
            RichText(
              textDirection: TextDirection.ltr,
              text: TextSpan(
                text: "  NORTH  ",
                style: TextStyle(color: Colors.black),
                children: [
                  // WidgetSpan(child: SizedBox(width: 20)),
                  TextSpan(
                    text: "proxy client",
                    style: TextStyle(color: Color(0xFF89909E))
                  )
                ]
              )                
            )
          ]
        )
      );
  }
}