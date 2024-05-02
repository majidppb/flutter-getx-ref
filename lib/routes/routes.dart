import 'package:get/get.dart';

import '../pages/home/bindings/home_binding.dart';
import '../pages/home/views/home_view.dart';
import '../pages/chat/bindings/chat_binding.dart';
import '../pages/chat/views/chat_view.dart';
import '../pages/dash/bindings/dash_binding.dart';
import '../pages/dash/views/dash_view.dart';
import '../pages/qr/bindings/qr_binding.dart';
import '../pages/qr/views/qr_view.dart';

sealed class Routes {
  static const initial = DashView.path;

  static final pages = [
    GetPage(
      name: DashView.path,
      page: () => const DashView(),
      binding: DashBinding(),
    ),
    GetPage(
      name: HomeView.path,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: QrView.path,
      page: () => const QrView(),
      binding: QrBinding(),
    ),
    GetPage(
      name: ChatView.path,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
  ];
}
