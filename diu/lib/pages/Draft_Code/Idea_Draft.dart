import 'package:diu/Constant/color_is.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ideas extends StatelessWidget {
  const Ideas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Idea",
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w500,
            color: Coloris.text_color,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputField(
              titleText: "Club Name: *",
              fieldText: "Select a club from the list",
            ),
            SizedBox(height: 10.h),
            InputField(
              titleText: "Full Name: *",
              fieldText: "Ex: Sifatullah Haque",
            ),
            InputField(
              titleText: "Mobile No: *",
              fieldText: "Ex: 018********",
            ),
            Row(
              children: [
                Expanded(
                  child: InputField(
                    titleText: "Batch: *",
                    fieldText: "Ex: D-78",
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: InputField(
                    titleText: "Roll: *",
                    fieldText: "Ex: 10",
                  ),
                ),
              ],
            ),
            InputField(
              titleText: "Share your idea: *",
              fieldText: "Enter your idea here...",
              maxLines: 7, // Adjust maxLines to fit the idea field
            ),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String fieldText;
  final String titleText;
  final int? maxLines;

  const InputField({
    Key? key,
    required this.titleText,
    required this.fieldText,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            titleText,
            style: TextStyle(
              color: Coloris.text_color,
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Coloris.text_color,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Coloris.text_color,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Coloris.primary_color,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: fieldText,
              contentPadding: EdgeInsets.only(
                  left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
              hintStyle: TextStyle(
                color: Coloris.secondary_color,
                fontWeight: FontWeight.w300,
              ),
            ),
            maxLines: maxLines, // Set maxLines for the idea field
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
