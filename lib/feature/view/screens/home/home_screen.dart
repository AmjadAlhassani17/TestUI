// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/color/color_manger.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List images = ["assets/images/pexel.png", "assets/images/doctor.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/svgs/image-4.svg"),
                SizedBox(
                  width: 100.w,
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              height: 328,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 328,
                    width: 365,
                    child: Image.asset(images[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
                itemCount: images.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "لمساهمي الروضة وحولي %",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(),
                    ),
                    Text(
                      "50 ",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: ColorManger.instance.textColor),
                    ),
                    Text(
                      "خصم ",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "بروفيشنال وي كير",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: ColorManger.instance.textColor),
                    ),
                    Text(
                      " مختبر مستوصف ",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/h7ajllmh-400x400-4.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/image-4.svg",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                Text(
                  "للتواصل والإستفسار:",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: ColorManger.instance.textColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "92219914",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.w,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      "assets/svgs/phone-call-9-1.svg",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 30.w,),
                    SvgPicture.asset(
                      "assets/svgs/instagram-4-1.svg",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 30.w,),
                    SvgPicture.asset(
                      "assets/svgs/facebook-6-1.svg",
                      height: 50,
                      width: 50,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
