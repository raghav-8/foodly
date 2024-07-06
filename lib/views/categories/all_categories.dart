import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/categories/widgets/category_tile.dart';


class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,

        title: Center(
          child: ReusableText(
            text: 'Categories',
            style: appStyle(20, kGray, FontWeight.w600),
          ),
        ),

      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: Container(
          padding: EdgeInsets.only(left:12.w,top:10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length-1, (index) {
              var category = categories[index];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
