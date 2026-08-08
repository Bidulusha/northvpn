import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class NavigationButton extends StatelessWidget {
  final String logo;
  final String text;
  final VoidCallback onPress;
  const NavigationButton(this.logo, this.text, this.onPress, {super.key});


  @override
  Widget build(BuildContext context) {    
    return Padding(
      padding: EdgeInsetsGeometry.directional(top: 5, bottom: 5),
      child: SizedBox(
        width: 198,
        child: TextButton(
          onPressed: onPress,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color> {
              WidgetState.hovered: Color(0xffEEF4FF),
              WidgetState.any: Color(0xffffffff)
            }),
            padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: borderRadiusConstant
              )
            ),
            foregroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color> {
              WidgetState.hovered: Color(0xff246BFE),
              WidgetState.any: Colors.black
            })
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/svg/$logo"),
              SizedBox(width: 15),
              Text(text, textDirection: TextDirection.ltr)
            ]
          )
        )
      )
    );
  }
}