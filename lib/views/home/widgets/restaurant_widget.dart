import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    Key? key,
    required this.image,
    required this.logo,
    required this.title,
    required this.rating,
    required this.time,
    this.onTap,
  }) : super(key: key);

  final String image;
  final String logo;
  final String title;
  final String rating;
  final String time;
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
                child: Stack(
                  children:[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height:112.h,
                        width: width*0.8.w,
                        child: Image.network(image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child:ClipRRect(
                        borderRadius:  BorderRadius.circular(50.r),
                        child:Container(
                          color: kLightWhite,
                          child: Padding(
                            padding: EdgeInsets.all(2.h),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Image.network(logo,
                                height: 30.h,
                                width: 30.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                        text: title,
                        style: appStyle(12.h, kDark, FontWeight.w600),
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
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: 5,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: kPrimary,
                          ),
                          itemCount: 5,
                          itemSize: 15.h,


                        ),
                        SizedBox(width: 10.w,),
                        ReusableText(
                          text: rating+" + Ratings",
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
