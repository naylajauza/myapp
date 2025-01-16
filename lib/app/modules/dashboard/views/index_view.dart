import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/modules/dashboard/views/event_detail_view.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class IndexView extends GetView {
  const IndexView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event List'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
         children: [
            eventList(),
            eventList(),
            eventList(),
            eventList(),
            eventList(),
            eventList(),
            eventList(),
            eventList(),
          ],
        ),
      ),
    );
  }
  
  ZoomTapAnimation eventList() {
    return ZoomTapAnimation(
      onTap: () {
        Get.to(() => const EventDetailView(), id: 1);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://picsum.photos/seed/picsum/200/300',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(height: 16),
          const Text(
            'title',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'description',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'location',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
           height: 10,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
