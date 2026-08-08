import 'package:flutter/material.dart';


class PageBaseClass extends StatelessWidget {
  final Widget header;
  final Widget body;
  final double verticalPadding = 40;
  final double horizontalPadding = 30;

  const PageBaseClass({required this.header,required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          Expanded(child: body),
        ],
      )
    );
  }

}