import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/food_widget.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(restaurants.length, (index) {
            var food = foods[index];
            return FoodWidget(image: food['imageUrl'],
                time: food['time'],
                title: food['title'],
                price: food['price'].toStringAsFixed(2),
            );
          }),
        )
    );
  }
}
