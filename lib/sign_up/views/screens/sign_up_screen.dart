import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/core/colors.dart';
import 'package:storeapp/core/images.dart';
import 'package:storeapp/login/views/widgets/custom_textField.dart';
import 'package:storeapp/sign_up/controllers/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final SignUpController controller = Get.put(SignUpController());
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
                      bottomLeft: Radius.circular(40.0),
                    ),
                  ),
                  child: FadeInUp(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07),
                      child: ListTile(
                        title: Text(
                          'create_account'.tr,
                          textAlign: TextAlign.center,
                          textDirection: Get.locale!.languageCode == 'ar'
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'please_insert_info'.tr,
                          textAlign: TextAlign.center,
                          textDirection: Get.locale!.languageCode == 'ar'
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.39,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              FadeInDown(
                child: CustomTextField(
                  controller: controller.nameController,
                  prefixIcon: AppImages.profile,
                  suffixIcon: null,
                  hint: 'name'.tr,
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              FadeInDown(
                child: CustomTextField(
                  controller: controller.shopNameController,
                  prefixIcon: AppImages.profile,
                  suffixIcon: null,
                  hint: 'shop_name'.tr,
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              FadeInDown(
                child: CustomTextField(
                  controller: controller.phoneController,
                  prefixIcon: AppImages.phone,
                  suffixIcon: null,
                  hint: 'phone'.tr,
                  isPassword: false,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              FadeInDown(
                child: InkWell(
                  onTap: () async {
                    controller.showTimeRangePicker(context);
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: CustomTextField(
                      controller: controller.workTimeController,
                      prefixIcon: null,
                      suffixIcon: null,
                      readOnly: true,
                      hint: 'work_time'.tr,
                      isPassword: false,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
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
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              FadeInRight(
                child: CustomTextField(
                  controller: controller.confirmPasswordController,
                  prefixIcon: AppImages.lock,
                  suffixIcon: AppImages.eye,
                  hint: 'confirm_password'.tr,
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
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
                          onPressed: () {},
                          child: Text(
                            'create_account'.tr,
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
