import 'package:flutter/material.dart';
import '../../constants.dart';

class SwitchButtonWidget extends StatefulWidget {
  final VoidCallback onPressed; 
  final double width;
  final double height;
  
  SwitchButtonWidget({this.width = 42, this.height = 24, super.key, required this.onPressed});

  @override
  _SwitchButtonState createState() => _SwitchButtonState(width, height);
}

class _SwitchButtonState extends State<SwitchButtonWidget> {
  final Duration animationDuration = Duration(milliseconds: 100);
  bool isOn = false;

  final double width;
  final double height;
  double circleSize = 0;

  _SwitchButtonState(this.width, this.height) {
    circleSize = height - 8;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GestureDetector(
        onTap: () => {
          setState(() {
            isOn = !isOn;
          })
        },
        child: AnimatedContainer(
          duration: animationDuration,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: isOn? Color(0xff246BFE) : Color(0xffE5E8EF),
            borderRadius: BorderRadius.all(Radius.circular(90))
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(3), 
            child: AnimatedAlign(
              duration: animationDuration,
              alignment: isOn? AlignmentGeometry.centerRight : AlignmentGeometry.centerLeft,
              child: Container(
                height: circleSize,
                width: circleSize,
                decoration: BoxDecoration( 
                  color: Colors.white,
                  shape: BoxShape.circle,
                )
              )
            )
          )
        )
      )
    //   child: TextButton( 
    //     style: ButtonStyle(
    //       backgroundColor: WidgetStateProperty.fromMap(<WidgetStatesConstraint, Color> {
    //         WidgetState.any: Color(0xffE5E8EF)
    //       }),
    //       shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(90))) 
    //     ),
    //     onPressed: () => {
    //       onPressed()
    //     },
    //     child: Padding(
    //       padding: EdgeInsets.all(3),
    //       child: Align(
    //         alignment: AlignmentGeometry.centerLeft,
    //         child: Container(
    //           width: 24,
    //           height: 24, 
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             color: Colors.white,
    //           )
    //         )
    //       )
    //     )
    //   )
    );
  }
}