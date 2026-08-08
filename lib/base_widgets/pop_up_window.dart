import 'package:flutter/material.dart';
import 'package:north_proxy/constants.dart';
import 'package:north_proxy/enums.dart';
import 'package:north_proxy/globals.dart';

class PopUpWindowContainer extends StatelessWidget {
  final String name;
  final String description;
  final Widget child;

  const PopUpWindowContainer({super.key, required this.name, required this.description, required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, child: 
    Stack(
      children: [
        GestureDetector(
          onTap: () {openPopUpWindow.value = PopUpEnum.nothing;},
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(32, 23, 25, 31),
          )
        ),
        Center(
          child: IntrinsicWidth(
            child: Container( 
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffE5E8EF), width: 1),
                borderRadius: borderRadiusConstant
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Directionality(
                  textDirection: TextDirection.ltr, 
                  child:Column(
                    textDirection: TextDirection.ltr,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row (
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            textDirection: TextDirection.ltr,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black)),
                              Text(description, textDirection: TextDirection.ltr, style: TextStyle(color: Color(0xff89909E)))
                            ]
                          ),
                          GestureDetector(
                            onTap: () {openPopUpWindow.value = PopUpEnum.nothing;},
                            child: const Text(
                              "x", textDirection: TextDirection.ltr, 
                              style: TextStyle(color: Color(0xff747B89))
                            )
                          )
                        ],
                      ),
                      Divider(color: Color(0xffEDF0F5),),
                      child                  
                    ],
                  ),
                )
              )
            )
          )
        )
      ]
      )
    );
  }
}