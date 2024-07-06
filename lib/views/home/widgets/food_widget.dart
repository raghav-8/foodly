import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class FoodWidget extends StatelessWidget {
  const FoodWidget({
    Key? key,
    required this.image,
    required this.time,
    required this.title,
    required this.price,
    this.onTap,
  }) : super(key: key);


  final String image;
  final String time;
  final String title;
  final String price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Padding(
        padding:  EdgeInsets.only(right: 12.w),
        child: Container(
          width: width*0.6.w,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,

          ),

          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: SizedBox(
                    height:112.h,
                    width: width*0.8.w,
                    child: Image.network(image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: title,
                          style: appStyle(12.h, kDark, FontWeight.w600),
                        ),
                        ReusableText(
                          text: "\$ "+ price,
                          style: appStyle(12.h, kPrimary, FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        ReusableText(
                          text: 'Delivery time',
                          style: appStyle(9.h, kGray, FontWeight.w600),
                        ),
                        ReusableText(
                          text: time,
                          style: appStyle(9.h, kGray, FontWeight.w600),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),


        ),
      ),
    );
  }
}
