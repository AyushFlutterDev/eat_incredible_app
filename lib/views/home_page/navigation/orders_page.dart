import 'dart:developer';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/order_receipt/order_receipt.dart';
import 'package:eat_incredible_app/views/home_page/others/track_order/track_order_page.dart';
import 'package:eat_incredible_app/widgets/order/order_card.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 600),
              child: Padding(
                padding: EdgeInsets.only(top: 2.5.h),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: OrderCard(
                      image:
                          "https://cdn3d.iconscout.com/3d/premium/thumb/tomato-5940724-4916146.png",
                      orderId: "ORD9865254",
                      orderDate: "Web, 12th May 22, 3.00pm",
                      orderStatus: "Delivered",
                      orderTotal: "2,000",
                      orderQuantity: "21",
                      viewDetails: () {
                        Get.to(() => OrderReceiptPage());
                      },
                      trackOrder: () {
                        Get.to(() => const TrackOrderPage());
                        log("track order");
                      }),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
