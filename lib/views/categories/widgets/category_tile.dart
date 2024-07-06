import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:get/get.dart';
import 'package:foodly/views/categories/category_page.dart';


class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key,required this.category }) : super(key: key);
  final category;
  @override
  Widget build(BuildContext context) {

    return ListTile(
      onTap: (){
        Get.to(()=>CategoryPage(),
          transition: Transition.rightToLeftWithFade,
          duration: Duration(milliseconds: 500),
        );

      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        backgroundImage: NetworkImage(category['imageUrl']),

      ),
      title: ReusableText(
        text: category['title'],
        style: appStyle(12, kGray, FontWeight.w600),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
