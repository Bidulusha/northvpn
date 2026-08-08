import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:north_proxy/base_widgets/pop_up_window.dart';
import 'package:north_proxy/base_widgets/buttons/button_do.dart';
import 'package:north_proxy/base_widgets/sections/section_base.dart';


Future<String?> getClipboardData() async {
  ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
  return data?.text;
}

class AddConfigurationPopUpWindow extends StatelessWidget {
  const AddConfigurationPopUpWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return PopUpWindowContainer(
      name: "Новая конфигурация", 
      description: "Добавьте новую конфигурацию", 
      child: SizedBox(
        width: 400,
        child: Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Ссылка конфигурации", 
              textDirection: TextDirection.ltr, 
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 5, ),
            SectionBase(
              child: FittedBox(
                fit: BoxFit.scaleDown, 
                child: DoButtonWidget(
                  "Вставить ссылку из буфера", 
                  () async {
                    var a = await getClipboardData();
                    print(a);
                  }
                ),
              )
            )
          ]
        )
      )
    );
  }
}