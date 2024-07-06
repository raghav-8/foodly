import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/food_list.dart';
import 'package:foodly/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';
import 'package:foodly/views/home/all_nearby_restaurants.dart';
import 'package:foodly/views/home/recommendations.dart';
import 'package:foodly/views/home/all_fastest_food.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: kOffWhite,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(60.h),

        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              CategoryList(),
              Heading(text: "Nearby Restaurants", onTap: (){
                Get.to(()=>AllNearbyRestaurants(),
                transition: Transition.cupertino,
                duration: Duration(milliseconds: 900)
                );

              },),
              NearbyRestaurantsList(),
              Heading(text: "Try Something New", onTap: (){
                Get.to(()=>Recommendations(),
                    transition: Transition.cupertino,
                    duration: Duration(milliseconds: 900)
                );
              },),
              FoodList(),
              Heading(text: "Food closer to you", onTap: (){
                Get.to(()=>AllFastestFood(),
                    transition: Transition.cupertino,
                    duration: Duration(milliseconds: 900)
                );
              },),
              FoodList(),
            ],
          ),
        ),
      ),
    );
  }
}

