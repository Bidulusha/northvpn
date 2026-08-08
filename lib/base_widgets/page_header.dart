import 'package:flutter/material.dart';

class PageHeaderWidget extends StatelessWidget {
  final String name;
  final String description;
  const PageHeaderWidget(this.name, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(color: Colors.black),
          textDirection: TextDirection.ltr,
        ),
        SizedBox(height: 6),
        Text(
          description,
          style: TextStyle(color: Color(0xff747B89)),
          textDirection: TextDirection.ltr,
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}