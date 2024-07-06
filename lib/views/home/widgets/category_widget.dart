import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/common/app_style.dart';
import 'package:get/get.dart';
import 'package:foodly/controllers/category_controller.dart';
import 'package:foodly/views/categories/all_categories.dart';

class CategoryWidget extends StatelessWidget {
  final category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController() );
    return GestureDetector(
      onTap: (){
        if(controller.getCategory == category['_id']){
          controller.updateCategory = '';
          controller.updateTitle = '';
        }
        else if(category['value'] == 'more'){
          Get.to(()=>AllCategories(),
            transition: Transition.fadeIn,
            duration:  const Duration(milliseconds: 900),
          );

        }
        else{
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Obx(()=>Container(
        margin: EdgeInsets.only(right: 5.w),
        padding: EdgeInsets.only(top:4.h),
        // height: 60.h,
        width: width*0.19,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: controller.getCategory==category['_id']?kSecondary: kOffWhite, width: 0.75.w),
        ),
        child:Column(
            children:[
              SizedBox(
                height: 35.h,
                child: Image.network(category['imageUrl'], fit: BoxFit.contain),
              ),
              ReusableText(
                text: category['title'],
                style: appStyle(12.sp, kDark, FontWeight.normal),
              ),
            ]
        ),
      ),
      ),
    );
  }
}
