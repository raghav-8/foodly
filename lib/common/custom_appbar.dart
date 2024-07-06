import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      height: 110.h,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      color: kOffWhite,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 22.r,
                  backgroundColor:kSecondary,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),

                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 6.h,left: 8.w),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: "Deliver To",
                        style: appStyle(13.h, kSecondary, FontWeight.w600),
                      ),
                      SizedBox(
                        width: width* 0.65,
                        child: Text(
                          "Current Location",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11, kGrayLight, FontWeight.normal),
                        ),
                      ),


                    ],
                  ),
                ),

              ],
            ),
            Text(
              getTimeOfDay(),
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),

    );
  }

  String getTimeOfDay(){
    DateTime now = DateTime.now();
    int hour = now.hour;
    if(hour < 6){
      return " 🌃 ";
    }
    else if(hour < 12){
      return " 🌅 ";
    }
    else if(hour < 18){
      return " ☀ ";
    }
    else{
      return " 🌙 ";
    }
  }

}
