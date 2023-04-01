import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

class iconLibrary extends StatelessWidget {
  const iconLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      onPressed: () async => await FlutterIconPicker.showIconPicker(context,
          iconPackModes: [IconPack.cupertino],
          backgroundColor: app_colors.thirdColors,
          iconColor: app_colors.text,
          closeChild: Text(
            "Close",
            style: TextStyle(color: app_colors.button),
          )),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Text(
        "Choose icon From Library",
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
      ),
      color: app_colors.thirdColors,
      textColor: Colors.white,
    );
  }
}
