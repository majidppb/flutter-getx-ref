import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/qr_controller.dart';

class QrView extends GetView<QrController> {
  const QrView({super.key});

  static const path = '/qr';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Screen'),
        centerTitle: true,
      ),
    );
  }
}
