import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {

  CustomContainer({super.key, required this.containerContent});

  Widget containerContent=Container();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,

      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.h),
          bottomRight: Radius.circular(60.h),

        ),
        child: Container(
          width: width,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: containerContent ,
          ),
        ),
      ),

    );
  }
}
