import 'package:flutter/material.dart';
import 'package:north_proxy/constants.dart';


class DoButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed; 
  
  const DoButtonWidget(this.buttonText, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextButton( 
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color> {
            WidgetState.any: Color(0xff246BFE)
          }),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: borderRadiusConstant)
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText, 
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white)
        ),
      )
    );
  }
}