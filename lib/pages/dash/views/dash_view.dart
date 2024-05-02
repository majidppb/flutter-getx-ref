import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../chat/views/chat_view.dart';
import '../../qr/views/qr_view.dart';
import '../../home/views/home_view.dart';
import '../controllers/dash_controller.dart';

class DashView extends GetView<DashController> {
  const DashView({super.key});

  static const path = '/dash';

  static const _floatingSize = 60.0;
  static const _navbar = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(null),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chat',
    ),
  ];

  static const _pages = IndexedStack(
    children: [
      HomeView(),
      QrView(),
      ChatView(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() => _pages.children.elementAt(controller.index)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedItemColor: Colors.amber,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.index,
          onTap: (newIndex) => controller.index = newIndex,
          items: _navbar,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: const CircleBorder(),
        backgroundColor: Colors.transparent,
        child: Container(
          width: _floatingSize,
          height: _floatingSize,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 250, 170, 20),
                Color.fromARGB(255, 255, 208, 121),
              ],
            ),
          ),
          child: const Icon(Icons.qr_code),
        ),
        onPressed: () {
          // index of QR
          controller.index = 1;
        },
      ),
    );
  }
}
