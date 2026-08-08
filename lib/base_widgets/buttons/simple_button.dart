import 'package:flutter/material.dart';
import '../../constants.dart';

class SimpleButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed; 
  
  const SimpleButtonWidget({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextButton( 
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color> {
            WidgetState.any: Colors.white
          }),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: borderRadiusConstant)
          )
        ),
        onPressed: onPressed,
        child: child
      )
    );
  }
}