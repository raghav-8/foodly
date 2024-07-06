import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(
      {
        Key? key,
        required this.child,
        required this.color,
      }) : super(key: key);
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/restaurant_bk.png'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: child,
    );
  }
}
