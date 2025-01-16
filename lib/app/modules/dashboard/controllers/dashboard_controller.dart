import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/dashboard/views/index_view.dart';
import 'package:myapp/app/modules/dashboard/views/profile_view.dart';
import 'package:myapp/app/modules/dashboard/views/your_event_view.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> pages = [
    const IndexView(),
    const YourEventView(),
    const ProfileView(),
  ];
  



}
