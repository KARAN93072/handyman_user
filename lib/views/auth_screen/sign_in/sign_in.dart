import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure/const/assets_url.dart';
import 'package:structure/const/spacing.dart';
import 'package:structure/const/color_pallet.dart';
import 'package:structure/const/typography.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static String id = "signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          padding: Spacing.screenPadding.copyWith(top: 100.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello Sara!',
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 22.sp,
                    color: AppColors.heading),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Welcome Back, you have been \n missed for long Time',
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: AppColors.body),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.body,
                      size: 20,
                    ),
                    label: Text(
                      'Email Address',
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 16,
                          color: AppColors.body),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r))),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.password_rounded,
                    color: AppColors.body,
                    size: 20,
                  ),
                  label: Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 16,
                        color: AppColors.body),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(color: AppColors.body),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                      )),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              FilledButton(onPressed: () {}, child: const Text("LOGIN")),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: AppColors.body),
                  ),
                  TextButton(onPressed: () {}, child: const Text("Sign Up")),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                      color: AppColors.body,
                    ),
                  ),
                  Text(
                    "Or Continue With",
                    style: TextStyle(color: AppColors.body, fontSize: 14),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                      color: AppColors.body,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      // foregroundImage: AssetImage(AssetsUrl.googleIcon),
                      backgroundColor: AppColors.backgroundColor,
                      child: SvgPicture.asset(
                        AssetsUrl.googleIcon,
                        height: 18.h,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Icon(
                          Icons.call_outlined,
                          size: 18,
                          color: AppColors.primary,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
