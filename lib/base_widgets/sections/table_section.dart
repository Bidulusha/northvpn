import 'package:flutter/material.dart';
import '../../constants.dart';

class TableSection extends StatelessWidget {
  final Widget child;

  const TableSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality (
      textDirection: TextDirection.ltr,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE5E8EF), width: 1), 
            color: Colors.white, 
            borderRadius: borderRadiusConstant,
          ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: child
        )
      ),
    );
  }
}