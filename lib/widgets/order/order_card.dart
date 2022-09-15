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
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            border: Border.all(
              color: const Color(0xffD0D0D0),
              width: 1,
            ),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
                child: Container(
                  //color: Colors.green,
                  // padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
                  //  padding: EdgeInsets.all(8),
                  height: 69.5.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 63.h,
                            width: 63.w,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(208, 208, 208, 0.25),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color.fromRGBO(208, 208, 208, 1),
                                width: 1,
                              ),
                            ),
                            child: CustomPic(
                              height: 36.h,
                              imageUrl: image,
                              width: 36.h,
                            ),
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                orderId,
                                style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(0, 0, 0, 19),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Total Amount\n₹$orderTotal',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff404040),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
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
                        height: 23.4.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(211, 104, 5, 0.25),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              const Divider(
                  color: Color.fromRGBO(208, 208, 208, 1), thickness: 1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$orderQuantity items',
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(97, 97, 97, 1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Placed on $orderDate',
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(97, 97, 97, 1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
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
                                  color: const Color(0xff02A008),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
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
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
