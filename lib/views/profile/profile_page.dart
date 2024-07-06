import 'package:flutter/material.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: kPrimary,
      appBar: PreferredSize(

        preferredSize:  Size.fromHeight(130.h),

        child: Container(
          height: 130.h,
        ),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Home Page'),
            ],
          ),
        ),
      ),
    );
  }
}

