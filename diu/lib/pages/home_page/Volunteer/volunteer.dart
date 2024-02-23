import 'package:diu/Constant/color_is.dart';
import 'package:diu/Constant/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Volunteer extends StatelessWidget {
  const Volunteer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloris.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Coloris.backgroundColor,
        backgroundColor: Coloris.backgroundColor,
        surfaceTintColor: Coloris.backgroundColor,
        title: Text(
          "Be a volunteer",
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w500,
            color: Coloris.text_color,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputField(
                titleText: "Full Name: ",
                fieldText: "Ex: Sifatullah Haque",
              ),
              const InputField(
                titleText: "Email address: ",
                fieldText: "Ex: yourname@gmail.com",
              ),
              Row(
                children: [
                  const Expanded(
                    child: InputField(
                      titleText: "Batch: ",
                      fieldText: "Ex: D-78",
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: InputField(
                      titleText: "Roll: ",
                      fieldText: "Ex: 10",
                    ),
                  ),
                ],
              ),
              const InputField(
                  titleText: "Registration No.",
                  fieldText: "Ex: CS-D-78-22-****"),
              RadioButton(),
              SizedBox(
                height: 10.h,
              ),
              InputField(titleText: "Phone No:", fieldText: "018********"),
              SizedBox(height: 10.h),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h), // Adjust padding
                  child: Common_Button(
                    text: "Submit",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/svg/button_svg.png"),
            fit: BoxFit.cover,
          ),
        ),
        height: 120.h, // Adjust the height as needed
      ),
    );
  }
}

class RadioButton extends StatelessWidget {
  const RadioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text("Semester Type:"),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text("Bi-Semester"),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text("Tri-Semester"),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  final String fieldText;
  final String titleText;
  final int? maxLines;
  final bool hasDropDownIcon;

  const InputField({
    Key? key,
    required this.titleText,
    required this.fieldText,
    this.maxLines,
    this.hasDropDownIcon = false,
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
            style: const TextStyle(
              color: Coloris.text_color,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Coloris.text_color,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Coloris.text_color,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Coloris.primary_color,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: fieldText,
                    contentPadding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
                    hintStyle: const TextStyle(
                      color: Coloris.secondary_color,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  maxLines: maxLines,
                ),
              ),
              if (hasDropDownIcon)
                const Icon(Icons.arrow_drop_down,
                    color: Coloris.secondary_color),
            ],
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
