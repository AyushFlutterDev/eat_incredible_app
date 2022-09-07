import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class OrderCard extends StatelessWidget {
  final String image;
  final String orderId;
  final String orderDate;
  final String orderStatus;
  final String orderTotal;
  final String orderQuantity;
  final GestureTapCallback viewDetails;

  final GestureTapCallback trackOrder;
  const OrderCard(
      {super.key,
      required this.image,
      required this.orderId,
      required this.orderDate,
      required this.orderStatus,
      required this.orderTotal,
      required this.orderQuantity,
      required this.viewDetails,
      required this.trackOrder});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          border: Border.all(
            color: const Color.fromRGBO(208, 208, 208, 1),
            width: 1,
          ),
        ),
        width: 93.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
              height: 9.5.h,
              width: 93.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 9.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(208, 208, 208, 0.25),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromRGBO(208, 208, 208, 1),
                            width: 1,
                          ),
                        ),
                        child: CustomPic(
                          height: 6.h,
                          imageUrl: image,
                          width: 6.h,
                        ),
                      ),
                      SizedBox(
                        width: 2.5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            orderId,
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(0, 0, 0, 19),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Total Amount  $orderTotal',
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(64, 64, 64, 1),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 1.5.w,
                      right: 1.5.w,
                    ),
                    height: 3.4.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(211, 104, 5, 0.25),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          // icon
                          Icons.circle,
                          color: const Color.fromARGB(255, 246, 122, 7),
                          size: 8.sp,
                        ),
                        SizedBox(
                          width: 1.3.w,
                        ),
                        Text(
                          orderStatus,
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(211, 104, 5, 1),
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            const Divider(
                color: Color.fromRGBO(208, 208, 208, 1), thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 0.9.h),
              child: SizedBox(
                height: 12.h,
                width: 93.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' $orderQuantity items',
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(97, 97, 97, 1),
                            fontSize: 9.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Placed on $orderDate',
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(97, 97, 97, 1),
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: viewDetails,
                          child: Row(
                            children: [
                              Text(
                                'View Details',
                                style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(2, 160, 8, 1.0),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Icon(
                                // icon
                                Icons.arrow_forward_ios,
                                color: const Color.fromRGBO(2, 160, 8, 1.0),
                                size: 10.sp,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: trackOrder,
                          child: Text(
                            'Track Order',
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(226, 10, 19, 1.0),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
