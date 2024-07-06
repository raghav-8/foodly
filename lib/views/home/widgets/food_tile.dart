import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    Key? key,
    required this.food,
  }) : super(key: key);

  final dynamic food;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:BorderRadius.all(Radius.circular(12.r)),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(food["imageUrl"],
                            fit: BoxFit.cover,
                          ),

                        ),
                        Positioned(
                          bottom:0,
                          child: Container(
                            padding: EdgeInsets.only(left:  6.w,bottom: 2.h),
                            height: 16.h,
                            width: width,
                            color: kGray.withOpacity(0.6),
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: kSecondary,

                              ),
                              itemSize: 15.h,

                            ),



                          ),
                        ),
                      ],
                    ),


                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      ReusableText(text: food['title'],
                        style: appStyle(11, kDark, FontWeight.w500
                        ),
                      ),
                      ReusableText(
                        text: 'Delivery Time: '+food['time'],
                        style: appStyle(11, kGray, FontWeight.w500),

                      ),
                      SizedBox(

                        height: 20.h,
                        width: width*0.55.w,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: food['additives'].length,
                          itemBuilder: (context, index) {
                            var additive= food['additives'][index];
                            return Container(
                              margin: EdgeInsets.only(right: 5.w),
                              decoration: BoxDecoration(
                                color: kSecondaryLight,
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:  EdgeInsets.all(2.h),
                                  child: ReusableText(
                                    text: additive['title'],
                                    style: appStyle(9, kGray, FontWeight.w400),
                                  ),
                                ),
                              ),
                            );
                          }
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),

          ),
          Positioned(
            right: 6.w,
            top: 6.h,
            child: Container(
              height: 20.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: ReusableText(
                  text: '\$ '+ food['price'].toString(),
                  style: appStyle(10, kLightWhite, FontWeight.w600),
                ),
              ),
            ),
          ),
          Positioned(
            right: 75.w,
            top: 6.h,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  color: kSecondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Icon(
                    MaterialCommunityIcons.cart_plus,
                    color: kLightWhite,
                    size: 15.sp,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
