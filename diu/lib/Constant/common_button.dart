import 'package:flutter/material.dart';

import 'color_is.dart';

class Common_Button extends StatelessWidget {
  final String text;
  const Common_Button({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(6),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(Coloris.primary_color),
      ),
      onPressed: () {
        // Perform login action
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
