import 'package:flutter/material.dart';
import 'package:flutter_time_range/flutter_time_range.dart';
import 'package:get/get.dart';
import 'package:storeapp/core/colors.dart';
import 'package:storeapp/sign_up/models/states_response_model.dart';
import 'package:storeapp/sign_up/providers/sign_up_provider.dart';
import 'package:storeapp/sign_up/views/screens/waiting_screen.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  final TextEditingController? nameController = TextEditingController();
  final TextEditingController? phoneController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();
  final TextEditingController? municipalityController = TextEditingController();
  final TextEditingController? addressController = TextEditingController();
  final TextEditingController? confirmPasswordController =
      TextEditingController();
  final TextEditingController? shopNameController = TextEditingController();
  final TextEditingController? workTimeController = TextEditingController();
  final SignUpProvider _signUpProvider = SignUpProvider();
  RxList states = <StatesResponseModel>[].obs;
  RxBool showSignUpButton = false.obs;

  RxString state = ''.obs;
  signUp(context) async {
    if (passwordController!.text != confirmPasswordController!.text) {
       Get.defaultDialog(
          title: 'error'.tr,
          content: Text(
            'pass_doesnt_match'.tr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
    } else {
      isLoading.value = true;
      final response = await _signUpProvider.signUp(
        nameController?.text,
        phoneController?.text,
        passwordController?.text,
        addressController?.text,
        confirmPasswordController?.text,
        state.value,
        workTimeController?.text,
        shopNameController?.text,
        municipalityController?.text,
        
      );
      if (response.isLeft()) {
        Get.offAll(WaitingScreen());
      } else if (response.isRight()) {
        final result = response.fold((l) => null, (r) => r);
        List<String> errorMessage = [];
        if (result?.address != null) {
          errorMessage.add('address'.tr + ' : ' + result?.address![0]);
        } else if (result?.password != null) {
          errorMessage.add('password'.tr + ' : ' + result?.password![0]);
        } else if (result?.password2 != null) {
          errorMessage
              .add('confirm_password'.tr + ' : ' + result?.password2![0]);
        } else if (result?.phonenumber != null) {
          errorMessage.add('phone'.tr + ' : ' + result?.phonenumber![0]);
        } else if (result?.storeName != null) {
          errorMessage.add('shop_name'.tr + ' : ' + result?.storeName![0]);
        } else if (result?.town != null) {
          errorMessage.add('baladieh'.tr + ' : ' + result?.town![0]);
        } else if (result?.username != null) {
          errorMessage.add('name'.tr + ' : ' + result?.username![0]);
        } else if (result?.workHours != null) {
          errorMessage.add('work_time'.tr + ' : ' + result?.workHours![0]);
        } else if (result?.x != null) {
          errorMessage.add('long'.tr + ' : ' + result?.x![0]);
        } else if (result?.y != null) {
          errorMessage.add('lat'.tr + ' : ' + result?.y![0]);
        }
        Get.defaultDialog(
          title: 'error'.tr,
          content: Text(
            errorMessage.join('\n'),
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }
      isLoading.value = false;
    }
  }

  getStates() async {
    isLoading.value = true;
    final response = await _signUpProvider.getStates();
    if (response.isLeft()) {
      final result = response.fold((l) => l, (r) => null);
      states.clear();
      states.addAll(result!);
      states.refresh();
    } else if (response.isRight()) {
      Get.defaultDialog(
        title: 'error'.tr,
        content: Text(
          'please_try_again'.tr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
    isLoading.value = false;
  }

  Future<void> showTimeRangePicker(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose event time".tr,
                style: TextStyle(
                  color: AppColors.red,
                )),
            content: TimeRangePicker(
              initialFromHour: DateTime.now().hour,
              initialFromMinutes: DateTime.now().minute,
              initialToHour: DateTime.now().hour,
              initialToMinutes: DateTime.now().minute,
              backText: "Back".tr,
              nextText: "next".tr,
              cancelText: "cancel".tr,
              selectText: "ok".tr,
              tabFromText: 'from'.tr,
              tabToText: 'to'.tr,
              editable: true,
              activeBgColor: Colors.white,
              activeFgColor: Colors.white,
              inactiveFgColor: Colors.white,
              selectedTimeStyle: TextStyle(
                color: AppColors.red,
                fontSize: 25,
              ),
              inactiveTabStyle: TextStyle(
                color: AppColors.red,
              ),
              activeLabelColor: AppColors.red,
              inactiveBgColor: AppColors.red,
              indicatorColor: AppColors.red,
              unselectedTimeStyle: TextStyle(
                color: AppColors.red,
              ),
              activeTabStyle: TextStyle(
                color: AppColors.red,
              ),
              is24Format: true,
              disableTabInteraction: true,
              // iconCancel: Icon(Icons.cancel_presentation, size: 12),
              // iconNext: Icon(Icons.arrow_forward, size: 12),
              // iconBack: Icon(Icons.arrow_back, size: 12),
              // iconSelect: Icon(Icons.check, size: 12),
              separatorStyle: TextStyle(color: AppColors.red, fontSize: 30),
              onSelect: (from, to) {
                workTimeController?.text =
                    "From : ${from.hour}:${from.minute}, To : ${to.hour}:${to.minute}";
                Navigator.pop(context);
              },
              onCancel: () => Navigator.pop(context),
            ),
          );
        });
  }

  @override
  void onInit() {
    getStates();
    super.onInit();
  }
}
