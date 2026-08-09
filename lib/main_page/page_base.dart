import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:north_proxy/base_widgets/buttons/switch_button.dart';

import 'package:north_proxy/enums.dart';
import 'package:north_proxy/globals.dart';
import 'package:north_proxy/src/bindings/bindings.dart';
import 'package:north_proxy/base_widgets/page_header.dart';
import 'package:north_proxy/base_widgets/page_base_class.dart';
import 'package:north_proxy/base_widgets/buttons/button_do.dart';
import 'package:north_proxy/base_widgets/sections/section_base.dart';
import 'package:north_proxy/base_widgets/sections/roll_up_section.dart';

import 'qr_code_button.dart';


class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  bool someValue = false;

  @override
  Widget build(BuildContext context) {
    return PageBaseClass(
      header: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageHeaderWidget("Главная", "Состояние ядра и активная конфигурация"),
          Row(
            textDirection: TextDirection.ltr,
            children: [
              const QrCodeButton(),
              const SizedBox(width: 15,),
              DoButtonWidget("Добавить", () {
                openPopUpWindow.value = PopUpEnum.addConfiguration;
                SmallText(text: "Hello from dart!").sendSignalToRust();
              })
            ]
          )
        ],
      ),

      body: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionBase(
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Container(decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle), width: 16, height: 16),
                    SizedBox(width: 5,),
                    Column(
                      textDirection: TextDirection.ltr,
                      children: [
                        Text("ОТКЛЮЧЕНО", textDirection: TextDirection.ltr, style: TextStyle(color: Color(0xff747B89)))
                      ]
                    )
                  ]
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Column(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text("ТРАФИК", textDirection: TextDirection.ltr, style: TextStyle(color: Color(0xff747B89))),
                        Text("Отправка: -", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black)),
                        Text("Загрузка: -", textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black)),
                      ]
                    ),
                    SizedBox(width: 68),
                    SwitchButtonWidget(width: 68, height: 36, onPressed: () => {})
                  ],
                )
              ]
            )
          ),

          SizedBox(height: 30,),
          RollUpSection(
            "Подписки",
            child: SizedBox()
          ),

          SizedBox(height: 30,),
          RollUpSection(
            "Конфигурации",
            child: SizedBox()
          )
        ],
      )
    );
  }
}