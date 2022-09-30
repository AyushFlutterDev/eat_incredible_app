import 'package:eat_incredible_app/utils/barrel.dart';

class CustomSnackbar {
  static errorSnackbar(String title, String subtitle) => Get.snackbar(
        title,
        subtitle,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: EdgeInsets.only(bottom: 60.h, left: 9.w, right: 9.w),
      );
  static successSnackbar(String title, String subtitle) => Get.snackbar(
        title,
        subtitle,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: EdgeInsets.only(bottom: 60.h, left: 9.w, right: 9.w),
      );
}
