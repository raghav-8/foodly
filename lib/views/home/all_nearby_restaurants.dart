import 'package:flutter/material.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/widgets/restaurant_tile.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: "Nearby Restaurants",
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: Padding(
          padding:  EdgeInsets.all(10.h),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(restaurants.length, (index) {
              var restaurant = restaurants[index];
              return RestaurantTile(restaurant: restaurant);
            }),
          ),
        ),


        ),
      );
  }
}
