import 'package:flutter/material.dart';
import 'color_is.dart';

class Common_Button extends StatelessWidget {
  final String text;
  final Widget destination; // Destination screen widget
  const Common_Button({
    Key? key,
    required this.text,
    required this.destination, // Destination screen widget parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Coloris.primary_color),
      ),
      onPressed: () {
        // Navigate to the destination screen when the button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
