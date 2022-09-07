import 'dart:developer';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/order/order_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 2.5.h),
          child: OrderCard(
              image:
                  "https://cdn3d.iconscout.com/3d/premium/thumb/tomato-5940724-4916146.png",
              orderId: "ORD9865254",
              orderDate: "Web, 12th May 22, 3.00pm",
              orderStatus: "Delivered",
              orderTotal: "2,000",
              orderQuantity: "21",
              viewDetails: () {
                log("view details");
              },
              trackOrder: () {
                log("track order");
              }),
        );
      },
    ));
  }
}
