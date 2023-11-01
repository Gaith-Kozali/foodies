import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/core/external_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/other_signup.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "asset/images/signup.svg",
                      height: 280.h,
                      fit: BoxFit.cover,
                    ),
                    Form(
                        key: key,
                        child: SizedBox(
                          width: 389.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Email Address',
                                style: TextStyle(
                                  color: ExternalColors.gray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 22, top: 9)
                                          .h,
                                  child: SizedBox(
                                    height: 48,
                                    child: Center(child: TextFormField(
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "****@gmail.com")
                                    )),
                                  )),
                              const Text(
                                'Password',
                                style: TextStyle(
                                  color: ExternalColors.gray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 22, top: 9).h,
                                child: SizedBox(
                                  height: 48,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "********"),
                                  ),
                                ),
                              ),
                              const Text(
                                'Date of Birth',
                                style: TextStyle(
                                  color: ExternalColors.gray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 22, top: 9)
                                          .h,
                                  child: SizedBox(
                                    height: 48,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 389.w,
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              ExternalColors.yellow)),
                                  child: const Text("signUp"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 22).h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(' have an account? ',
                                        style: TextStyle(
                                          color: const Color(0xFF323A46),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: 0.14.h,
                                        )),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          ' login',
                                          style: TextStyle(
                                            color: const Color(0xFF3568FF),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            height: 0.14.h,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 179.w,
                                      child: const Divider(
                                        color: Color(0XFF7E8B9E),
                                      )),
                                  Text(
                                    'OR',
                                    style: TextStyle(
                                      color: const Color(0xFF7D8B9E),
                                      fontSize: 11.1.sp,
                                      fontWeight: FontWeight.w500,
                                      height: 0.16.h,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 179.w,
                                      child: const Divider(
                                        color: Color(0XFF7E8B9E),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              OtherSignUp()
                            ],
                          ),
                        ))
                  ],
                ))),
      ),
    );
  }
}
