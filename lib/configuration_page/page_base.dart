import 'package:flutter/material.dart';

import 'package:north_proxy/enums.dart';
import 'package:north_proxy/globals.dart';
import 'package:north_proxy/base_widgets/page_header.dart';
import 'package:north_proxy/base_widgets/page_base_class.dart';
import 'package:north_proxy/base_widgets/buttons/button_do.dart';
import 'package:north_proxy/base_widgets/buttons/simple_button.dart';
import 'package:north_proxy/base_widgets/sections/section_base.dart';


class ConfigurationPageView extends StatefulWidget {
  const ConfigurationPageView({super.key});

  @override
  _ConfigurationPageViewState createState() => _ConfigurationPageViewState();
}

class _ConfigurationPageViewState extends State<ConfigurationPageView> {
  @override
  Widget build(BuildContext context) {
    return PageBaseClass(
      header: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageHeaderWidget("Конфигурации", "Ссылки, подписки и отдельные узлы"),
          Row(
            textDirection: TextDirection.ltr,
            children: [
              const SizedBox(width: 15,),
              DoButtonWidget("Добавить", () {})
            ]
          )
        ],
      ),

      body: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                child: SectionBase(
                  child: SizedBox(height: 30,)
                ),
              ),
              const SizedBox(width: 6,),

              SimpleButtonWidget(
                onPressed: () => {}, 
                child: Text("Все группы", textDirection: TextDirection.ltr), 
              ),
              const SizedBox(width: 6,),

              SimpleButtonWidget(
                onPressed: () => {}, 
                child: Text("Проверить", textDirection: TextDirection.ltr), 
              ),
            ]
          ), // Search field and buttons
          const SizedBox(height: 10,),

          SectionBase(
            child: SizedBox(height: 120,),
          ),
          const SizedBox(height: 10,),

          Expanded(child: SectionBase(child: SizedBox()))
        ],
      )
    );
  }
}