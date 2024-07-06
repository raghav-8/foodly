import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurantsList extends StatelessWidget {
  const NearbyRestaurantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(restaurants.length, (index) {
            var restaurant = restaurants[index];
            return RestaurantWidget(
                image: restaurant["imageUrl"],
                logo: restaurant["logoUrl"] ,
                title: restaurant["title"],
                rating: restaurant["ratingCount"],
                time: restaurant["time"],

            );
          }),
        )
    );
  }
}
