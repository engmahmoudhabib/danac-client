import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:storeapp/core/app_pages.dart';
import 'package:storeapp/core/colors.dart';
import 'package:geolocator/geolocator.dart';
import 'package:storeapp/core/images.dart';
import 'package:storeapp/login/views/widgets/custom_textField.dart';
import 'package:storeapp/sign_up/controllers/sign_up_controller.dart';
import 'package:storeapp/sign_up/models/states_response_model.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> markers = [];
  bool servicestatus = false;
  bool haspermission = false;
  late LocationPermission permission;
  late Position position;
  String? long, lat;
  late StreamSubscription<Position> positionStream;
  final SignUpController controller = Get.put(SignUpController());
  @override
  void initState() {
    checkGps();
    super.initState();
  }

  checkGps() async {
    servicestatus = await Geolocator.isLocationServiceEnabled();
    if (servicestatus) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Get.defaultDialog(
            title: 'error'.tr,
            content: Text(
              "Location permissions are permanently denied".tr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        } else if (permission == LocationPermission.deniedForever) {
          Get.defaultDialog(
            title: 'error'.tr,
            content: Text(
              "Location permissions are permanently denied".tr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        } else {
          haspermission = true;
        }
      } else {
        haspermission = true;
      }
      if (haspermission) {
        setState(() {});

        getLocation();
      }
    } else {
      Get.defaultDialog(
        title: 'error'.tr,
        content: Text(
          "GPS Service is not enabled, turn on GPS location".tr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
    setState(() {});
  }

  getLocation() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    long = position.longitude.toString();
    lat = position.latitude.toString();
    setState(() {});
    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position position) {
      long = position.longitude.toString();
      lat = position.latitude.toString();
      GetStorage().write('lat', lat);
      GetStorage().write('long', long);

      markers.add(
        Marker(
          width: 150.0,
          height: 150.0,
          point: latLng.LatLng(double.parse(lat!), double.parse(long!)),
          builder: (ctx) => const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 35.0,
          ),
        ),
      );
      setState(() {});
    });
    _mapController.move(
        latLng.LatLng(
          double.parse(lat!),
          double.parse(
            long!,
          ),
        ),
        14);
  }

  MapController _mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: lat == null || long == null
          ? Center(
              child: CircularProgressIndicator(
                color: AppColors.red,
              ),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                            top: MediaQuery.of(context).size.height * 0.07,
                          ),
                          child: ListTile(
                            title: Text(
                              'd_location'.tr,
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
                              'det_your_position'.tr,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                        center: latLng.LatLng(
                          double.parse(lat!),
                          double.parse(
                            long!,
                          ),
                        ),
                        onTap: (position, latlng) {
                          setState(() {
                            markers.clear();
                            markers.add(
                              Marker(
                                width: 150.0,
                                height: 150.0,
                                point: latlng,
                                builder: (ctx) => const Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 35.0,
                                ),
                              ),
                            );
                          });
                          GetStorage().write('lat', latlng.latitude.toString());
                          GetStorage()
                              .write('long', latlng.longitude.toString());
                        },
                        zoom: 13.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://api.mapbox.com/styles/v1/mahmoudhabib/clqjpcx4v00n201o36nb8gfip/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFobW91ZGhhYmliIiwiYSI6ImNscXh6YWtiZzA0bDQycGxsOGF0dmJzc3YifQ.m-x2FCK7JR_XikXNH5RH5w',
                          additionalOptions: {
                            'accessToken':
                                'pk.eyJ1IjoibWFobW91ZGhhYmliIiwiYSI6ImNscXh6YWtiZzA0bDQycGxsOGF0dmJzc3YifQ.m-x2FCK7JR_XikXNH5RH5w',
                            'id': 'mapbox.mapbox-streets-v8',
                          },
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayer(
                          markers: [
                            for (int i = 0; i < markers.length; i++) markers[i]
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      getLocation();

                      setState(() {});
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.9,
                      color: AppColors.grey.withOpacity(0.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            AppImages.locationTarget,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'click_here_if_you'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FadeInDown(
                        child: controller.isLoading.value == true
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.red,
                                ),
                              )
                            : SizedBox(
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: 48,
                                child: Material(
                                  elevation: 10.0,
                                  borderRadius: BorderRadius.circular(8),
                                  child: DropdownSearch<StatesResponseModel>(
                                    // asyncItems: (String filter) => controller.getStates(),
                                    itemAsString: (StatesResponseModel u) =>
                                        u.name!,
                                    items: controller.states
                                        as List<StatesResponseModel>,
                                    onChanged: (StatesResponseModel? data) {
                                      setState(() {
                                        lat = data?.latitude.toString();
                                        long = data?.longitude.toString();
                                        markers.clear();
                                        markers.add(
                                          Marker(
                                            width: 150.0,
                                            height: 150.0,
                                            point: latLng.LatLng(
                                                double.parse(lat!),
                                                double.parse(long!)),
                                            builder: (ctx) => const Icon(
                                              Icons.location_on,
                                              color: Colors.red,
                                              size: 35.0,
                                            ),
                                          ),
                                        );
                                      });
                                      GetStorage().write('lat', lat);
                                      GetStorage().write('long', long);
                                      _mapController.move(
                                          latLng.LatLng(double.parse(lat!),
                                              double.parse(long!)),
                                          14);
                                    },
                                    dropdownDecoratorProps:
                                        DropDownDecoratorProps(
                                      dropdownSearchDecoration: InputDecoration(
                                        labelText: "state".tr,
                                        suffixIcon: SizedBox(),
                                        prefixIcon: SizedBox(),
                                        contentPadding: EdgeInsets.all(10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.5,
                                              color: Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 3, color: AppColors.red),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      FadeInDown(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: CustomTextField(
                            controller: controller.municipalityController,
                            prefixIcon: null,
                            suffixIcon: null,
                            hint: 'baladieh'.tr,
                            isPassword: false,
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeInDown(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomTextField(
                        controller: controller.addressController,
                        prefixIcon: null,
                        suffixIcon: null,
                        hint: 'address'.tr,
                        isPassword: false,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: Text(
                        'next'.tr,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
