// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class OrderReceiptPage extends StatelessWidget {
  OrderReceiptPage({super.key});
  final GlobalKey<State<StatefulWidget>> _printKey = GlobalKey();

  // //!=========================== Funtion for widget to pdf ======================================================
  // void _printScreen() {
  //   Printing.layoutPdf(onLayout: (PdfPageFormat format) async {
  //     final doc = pw.Document();

  //     final image = await WidgetWraper.fromKey(
  //       key: _printKey,
  //       pixelRatio: 2.0,
  //     );

  //     doc.addPage(pw.Page(
  //         pageFormat: format,
  //         build: (pw.Context context) {
  //           return pw.Center(
  //             child: pw.Expanded(
  //               child: pw.Image(image),
  //             ),
  //           );
  //         }));

  //     return doc.save();
  //   });
  // }
  // //!=================================================================================================

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
          child: RepaintBoundary(
            //!==== This is the widget that will be printed.
            key: _printKey,
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
                SizedBox(height: 15.h),

                Text(
                  "17 items in this order",
                  style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15.h),

                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 30,
                ),
                //!======================================================================================
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 23.0),
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
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 70.h,
                              width: 240.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Onion",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff2C2C2C),
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
                                          color: Color(0xff949494),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "₹1.23",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff000000),
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

                Row(
                  children: List.generate(20, (index) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 1,
                          width: 10,
                          color: Color(0XFF5A5A5A),
                        ),
                      ),
                    );
                  }),
                ),

                SizedBox(
                  height: 10.h,
                ),

                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Bill Details",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Item Total",
                    style: GoogleFonts.poppins(
                      color: Color(0xff5A5A5A),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹24.2",
                    style: GoogleFonts.poppins(
                      color: Color(0xff5A5A5A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Delivery partner fee",
                    style: GoogleFonts.poppins(
                      color: Color(0xff5A5A5A),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹24.2",
                    style: GoogleFonts.poppins(
                      color: Color(0xff5A5A5A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Discount Applied(abc123)",
                    style: GoogleFonts.poppins(
                      color: Color(0xff35AB39),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    "₹24.2",
                    style: GoogleFonts.poppins(
                      color: Color(0xff35AB39),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Total Bill",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    "₹100.2",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Container(
                  height: 1,
                  color: Colors.grey,
                ),

                SizedBox(
                  height: 10.h,
                ),

                Text(
                  "Order Details",
                  style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Order id",
                    style: GoogleFonts.poppins(
                      color: Color(0xff787878),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "ORD9865254",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Payment",
                    style: GoogleFonts.poppins(
                      color: Color(0xff787878),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "Paid Online",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Deliver to",
                    style: GoogleFonts.poppins(
                      color: Color(0xff787878),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "2nd floor, pecho pachi tala near pond",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(
                    "Order placed",
                    style: GoogleFonts.poppins(
                      color: Color(0xff787878),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "Placed on Tue, 07 jan’22, 10:54 PM",
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                Container(
                  height: 1,
                  color: Colors.grey,
                ),

                SizedBox(
                  height: 10.h,
                ),

                Row(
                  children: [
                    CircleAvatar(
                        radius: 36,
                        backgroundColor: Color(0xffFF8F94),
                        child: Image.asset(
                          "assets/images/helper.png",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Need help with your order?",
                          style: GoogleFonts.poppins(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Support is alaways avaliable",
                          style: GoogleFonts.poppins(
                            color: Color(0xff787878),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: 25.w, right: 25.w, top: 25.h, bottom: 30.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: const Color.fromRGBO(226, 10, 19, 1),
                      ),
                      onPressed: () {
                        //Get.to(() => const VerificationPage());
                      },
                      child: Text(
                        'Repeat Order',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                //!=================================================================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}
