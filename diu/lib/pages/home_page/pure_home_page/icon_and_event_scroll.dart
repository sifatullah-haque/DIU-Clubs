import 'package:diu/Constant/color_is.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsAndEventScroll extends StatelessWidget {
  const IconsAndEventScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Clubs",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          SizedBox(
            height: 10.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 55.h,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/logos/CPC.png"),
                ),
                CircleAvatar(
                  radius: 55.h,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/logos/CDS.png"),
                ),
                SizedBox(
                  width: 7.w,
                ),
                CircleAvatar(
                  radius: 45.h,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/logos/FPC.png"),
                ),
                SizedBox(
                  width: 5.w,
                ),
                CircleAvatar(
                  radius: 55.h,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/logos/CPC.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text(
            "Upcoming Events",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 65.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: Coloris.primary_color,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
