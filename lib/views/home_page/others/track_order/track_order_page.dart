// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Color.fromRGBO(0, 0, 0, 1)),
          onPressed: () => Get.back(),
        ),
        title: Center(
          child: Text(
            'Order #12312312312',
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(97, 97, 97, 1),
              fontSize: 9.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'HELP',
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(255, 0, 0, 1),
                fontSize: 9.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Summary",
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Arrived at 11:32 pm",
                style: GoogleFonts.poppins(
                  color: const Color(0xff787878),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "STATUS",
                style: GoogleFonts.poppins(
                  color: const Color(0xff000000),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              /*Column(
                children: [
                  SizedBox(
                    height: 30.h,
                    child: TimelineTile(
                      lineXY: 0.1,
                      isFirst: true,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFF27AA69),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Order Confirmed",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600, color: const Color(0xff000000),
                                  fontSize: 14.sp,)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFF27AA69),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TimelineTile(
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFFD9D9D9),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Shipped",
                            style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500, color: const Color(0xff000000),
                                  fontSize: 12.sp,)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFFD9D9D9),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TimelineTile(
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFFD9D9D9),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Out For Delivery",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500, color: const Color(0xff000000),
                                  fontSize: 12.sp,)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFFD9D9D9),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TimelineTile(
                      isLast: true,
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFFD9D9D9),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Delivered",
                            style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500, color: const Color(0xff000000),
                                  fontSize: 12.sp,)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFFD9D9D9),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                ],
              )*/

               Card(
                 child: Container(
                   height: 1,
                   color: Colors.grey,
                 ),
               ),
               SizedBox(height: 30,),
              //!======================================================================================
              ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 60,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom:23.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffB50000).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: CustomPic(
                              height: 70.h,
                              width: 70.w,
                              imageUrl:
                                  "https://img.freepik.com/free-photo/overhead-view-fresh-broccoli-brown-basket-white-table_140725-142300.jpg?w=1060&t=st=1663250304~exp=1663250904~hmac=1e58ba0b229bf70163d4cad58c295877ac7f30b35f537c832df26b9298ea62be",
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            height: 70.h,
                            width: 240.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Onion",
                                style: GoogleFonts.poppins(
                                  color:  Color(0xff2C2C2C),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "500 g x 2",
                                       style: GoogleFonts.poppins(
                                  color:  Color(0xff949494),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                    ),
                                    Text(
                                      "₹1.23",
                                     style: GoogleFonts.poppins(
                                  color:  Color(0xff000000),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    );
                  }),

//!=================================================================================================
            ],
          ),
        ),
      ),
    );
  }
}
