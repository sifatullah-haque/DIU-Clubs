import 'package:diu/Constant/backend/CRUD.dart';
import 'package:diu/Constant/color_is.dart';
import 'package:diu/Constant/common_button.dart';
import 'package:diu/Constant/provider/provider.dart';

import 'package:diu/pages/home_page/Join_Club/join_club_success.dart';
import 'package:diu/willDeleteLater/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class JoinClubCopy extends StatelessWidget {
  JoinClubCopy({Key? key}) : super(key: key);

  //firebase firestore service adding

  final FirestoreService fireStoreJoinClub = FirestoreService();

  @override
  Widget build(BuildContext context) {
    final joinClubState = Provider.of<TestFileState>(context);
    return Scaffold(
      backgroundColor: Coloris.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Coloris.backgroundColor,
        backgroundColor: Coloris.backgroundColor,
        surfaceTintColor: Coloris.backgroundColor,
        title: Text(
          "Join Cub",
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
              const Text("Select Your Club",
                  style: TextStyle(
                    color: Coloris.text_color,
                  )),
              SizedBox(height: 10.h),
              TestFile(
                text: "Select Club",
                options: const [
                  'DIU Computer & Programming Community',
                  'DIU FPC',
                  'DIU CDS'
                ],
                onItemSelected: (value) {
                  // Handle the selected value here
                  print("Semester Type selected: $value");
                  joinClubState.clubSelectController.text =
                      value ?? "not selected";
                },
              ),
              SizedBox(height: 10.h),
              InputField(
                controller: joinClubState.nameController,
                titleText: "Full Name: ",
                fieldText: "Ex: Sifatullah Haque",
              ),
              InputField(
                controller: joinClubState.emailController,
                titleText: "Email address: ",
                fieldText: "Ex: yourname@gmail.com",
              ),
              Row(
                children: [
                  Expanded(
                    child: InputField(
                      controller: joinClubState.batchController,
                      titleText: "Batch: ",
                      fieldText: "Ex: D-78",
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: InputField(
                      controller: joinClubState.rollController,
                      titleText: "Roll: ",
                      fieldText: "Ex: 10",
                    ),
                  ),
                ],
              ),
              InputField(
                  controller: joinClubState.regController,
                  titleText: "Registration No.",
                  fieldText: "Ex: CS-D-78-22-****"),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Semester Type:"),
                        SizedBox(height: 10.h),
                        TestFile(
                          text: "Select Semester",
                          options: ["Bi-Semester", "Tri-Semester"],
                          onItemSelected: (value) {
                            // Handle the selected value here
                            print("Semester Type selected: $value");
                            joinClubState.semesterController.text =
                                value ?? "not selected";
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Your Shift:"),
                        SizedBox(height: 10.h),
                        TestFile(
                          text: "Select Shift",
                          options: ["Day Shift", "Evening Shift"],
                          onItemSelected: (value) {
                            // Handle the selected value here
                            print("Your Shift selected: $value");
                            joinClubState.shiftController.text =
                                value ?? "not selected";
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              InputField(
                controller: joinClubState.phoneController,
                titleText: "Phone No:",
                fieldText: "018********",
              ),
              const Text("Payment Method: ",
                  style: TextStyle(
                    color: Coloris.text_color,
                  )),
              SizedBox(height: 10.h),
              TestFile(
                text: "Payment Type (Send Money)",
                options: const [
                  'Bkash',
                  'Rocket',
                  'Nagad',
                ],
                onItemSelected: (value) {
                  // Handle the selected value here
                  print("Semester Type selected: $value");
                  joinClubState.paymentController.text =
                      value ?? "not selected";
                },
              ),
              SizedBox(height: 10.h),
              Text(
                "Bkash/Nagad Number for Payment 018********",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp),
              ),
              SizedBox(height: 10.h),
              InputField(
                  controller: joinClubState.transactionController,
                  titleText: "Transaction Id:",
                  fieldText: "Ex: BBH31HXB5L"),
              InputField(
                  controller: joinClubState.fbController,
                  titleText: "Fb Profile Link:",
                  fieldText: "Ex:  www.facebook.com/user.name"),
              InputField(
                  controller: joinClubState.interestedController,
                  titleText: "Interested In:",
                  fieldText: "Ex:  Programming, Networking"),
              InputField(
                  controller: joinClubState.expertController,
                  titleText: "Expert In:",
                  fieldText: "ex:  Photography, Development"),
              Center(
                child: GestureDetector(
                  onTap: () {
                    fireStoreJoinClub.addJoinClub(
                      joinClubState.nameController.text,
                      joinClubState.emailController.text,
                      joinClubState.batchController.text,
                      joinClubState.rollController.text,
                      joinClubState.regController.text,
                      joinClubState.semesterController.text,
                      joinClubState.shiftController.text,
                      joinClubState.phoneController.text,
                      joinClubState.paymentController.text,
                      joinClubState.transactionController.text,
                      joinClubState.fbController.text,
                      joinClubState.interestedController.text,
                      joinClubState.expertController.text,
                      joinClubState.clubSelectController.text,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JoinClubSuccess(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              )
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
  final String radioTitle;
  final String firstOption;
  final String secondOption;
  final int? value1;
  final int? value2;
  const RadioButton({
    super.key,
    required this.radioTitle,
    required this.firstOption,
    required this.secondOption,
    this.value1,
    this.value2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(radioTitle),
        ),
        Row(
          children: [
            Row(
              children: [
                Radio(
                  value: value1,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(firstOption),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                Radio(
                  value: value2,
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(secondOption),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String fieldText;
  final String titleText;
  final int? maxLines;
  final bool hasDropDownIcon;

  const InputField({
    Key? key,
    required this.controller,
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
                  controller: controller,
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
