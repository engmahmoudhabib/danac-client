import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storeapp/core/api.dart';
import 'package:storeapp/sign_up/models/sign_up_error_model.dart';
import 'package:storeapp/sign_up/models/sign_up_request_model.dart';
import 'package:storeapp/sign_up/models/sign_up_response_model.dart';
import 'package:storeapp/sign_up/models/states_response_model.dart';

class SignUpProvider extends GetConnect {
  Future<Either<SignUpResponseModel, SignUpErrorModel>> signUp(
    String? name,
    String? phone,
    String? password,
    String? address,
    String? password2,
    String? state,
    String? workHours,
    String? storeName,
    String? town,
  ) async {
    final response = await post(
      API.signUpURL,
      SignUpRequestModel(
        username: name,
        password: password,
        phonenumber: phone,
        deviceToken: GetStorage().read('fcmToken'),
        deviceType: 'android',
        x: GetStorage().read('long'),
        y: GetStorage().read('lat'),
        address: address,
        password2: password2,
        state: state,
        storeName: storeName,
        town: town,
        workHours: workHours,
      ).toJson(),
    );
    print(SignUpRequestModel(
      username: name,
      password: password,
      phonenumber: phone,
      deviceToken: GetStorage().read('fcmToken'),
      deviceType: 'android',
      x: GetStorage().read('long'),
      y: GetStorage().read('lat'),
      address: address,
      password2: password2,
      state: state,
      storeName: storeName,
      town: town,
      workHours: workHours,
    ).toJson());
    if (response.status.isOk) {
      return Left(SignUpResponseModel.fromJson(response.body));
    } else {
      return Right(SignUpErrorModel.fromJson(response.body));
    }
  }

  Future<Either<List<StatesResponseModel>, String?>> getStates() async {
    try {
      final response = await get(
        API.getStates,
        /*   headers: {
          'Authorization': 'Bearer ' + GetStorage().read('access'),
        }, */
      );
      if (response.status.isOk) {
        Iterable l = response.body;
        List<StatesResponseModel> res = List<StatesResponseModel>.from(
            l.map((model) => StatesResponseModel.fromJson(model)));
        return Left(res);
      } else {
        return Right(response.statusText);
      }
    } catch (e) {
      return Right('An error occurred: $e');
    }
  }
}
