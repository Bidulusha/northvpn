import 'package:north_proxy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'section_base.dart';


class RollUpSection extends StatelessWidget {
  final String name;
  final Widget child;
  const RollUpSection(this.name, {super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black)),
            SizedBox(width: 4,),
            SvgPicture.asset("assets/svg/roll_up_open.svg")
          ]
        ),
        SizedBox(height: 15),
        SectionBase(
          child: child,
        )
      ]
    );
  }
}