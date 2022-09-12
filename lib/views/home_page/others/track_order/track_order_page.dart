import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.w, top: 3.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Summary",
                          style: TextStyle(
                              color: const Color.fromRGBO(97, 97, 97, 1),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 10),
                      Text("Arrived at 11:32 pm",
                          style: TextStyle(
                              color: const Color.fromARGB(171, 97, 97, 97),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400)),
                      const SizedBox(height: 10),
                      Text("STATUS",
                          style: TextStyle(
                              color: const Color.fromRGBO(97, 97, 97, 1),
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 6.h,
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
                              GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFF27AA69),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                    child: TimelineTile(
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFF27AA69),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Shipped",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFF27AA69),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                    child: TimelineTile(
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFF27AA69),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Out For Delivery",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFF27AA69),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                    child: TimelineTile(
                      isLast: true,
                      lineXY: 0.1,
                      indicatorStyle: const IndicatorStyle(
                        width: 13,
                        color: Color(0xFF27AA69),
                        padding: EdgeInsets.all(6),
                      ),
                      endChild: Text("Delivered",
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w400)),
                      beforeLineStyle: const LineStyle(
                        color: Color(0xFF27AA69),
                        thickness: 2.5,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
