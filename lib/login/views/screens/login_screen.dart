import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/core/colors.dart';
import 'package:storeapp/core/images.dart';
import 'package:storeapp/login/controller/login_controller.dart';
import 'package:storeapp/login/views/screens/forgot_password_screen.dart';
import 'package:storeapp/login/views/widgets/custom_textField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Obx(
          () => Column(
            children: [
              FadeInLeft(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(
                        40.0,
                      ),
                    ),
                  ),
                  child: FadeInUp(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.07,
                      ),
                      child: ListTile(
                        title: Text(
                          'login'.tr,
                          textDirection: Get.locale!.languageCode == 'ar'
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                              textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'happy_to_see_you'.tr,
                            textAlign: TextAlign.center,
                          textDirection: Get.locale!.languageCode == 'ar'
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              FadeInDown(
                child: CustomTextField(
                  controller: controller.phoneController,
                  prefixIcon: AppImages.phone,
                  suffixIcon: null,
                  hint: 'phone_or_email'.tr,
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              FadeInRight(
                child: CustomTextField(
                  controller: controller.passwordController,
                  prefixIcon: AppImages.lock,
                  suffixIcon: AppImages.eye,
                  hint: 'password'.tr,
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  onSubmitted: (val) {
                    controller.login();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(ForgotPasswordScreen());
                  
                      },
                      child: Text(
                        'forgot_password'.tr,
                        style: TextStyle(
                          color: AppColors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              FadeInLeft(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 45,
                  child: controller.isLoading.value == true
                      ? Center(
                          child: CircularProgressIndicator(
                            color: AppColors.red,
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: Text(
                            'log'.tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(AppColors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
              ),
         
            ],
          ),
        ),
      ),
    );
  }
}
