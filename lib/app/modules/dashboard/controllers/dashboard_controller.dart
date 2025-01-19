import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/event_response.dart';
import 'package:myapp/app/modules/dashboard/views/index_view.dart';
import 'package:myapp/app/modules/dashboard/views/profile_view.dart';
import 'package:myapp/app/modules/dashboard/views/your_event_view.dart';
import 'package:myapp/app/utils/api.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> pages = [
     IndexView(),
     YourEventView(),
     ProfileView(),
  ];

  var yourEvents = <Events>[].obs;
  Future<void> getYourEvent() async {
    final response = await _getConnect.get(
      BaseUrl.yourEvent,
      headers: {'Authorization': "Bearer $token"},
      contentType: "application/json",
    );
    final eventResponse = EventResponse.fromJson(response.body);
    yourEvents.value = eventResponse.events ?? [];
 }

  var yourEvents;

  get locationController => null;

  get eventDateController => null;

  get descriptionController => null;

  get nameController => null;
  
  get _getConnect => null;
  
  get token => null;

  getEvent() {}

  void getYourEvent() {}

  void addEvent() {}
  



}
