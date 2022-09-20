import 'package:eat_incredible_app/utils/barrel.dart';

class OrderBill extends StatefulWidget {
  const OrderBill({super.key});

  @override
  State<OrderBill> createState() => _OrderBillState();
}

class _OrderBillState extends State<OrderBill> {
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
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 10.h),
            child: SizedBox(
              height: 140.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    height: 85.h,
                    width: 14.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'INSTACART',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffE20A13),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit suspendisse fusce ante erat nunc, ultricies.',
                              style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff5A5A5A),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ],
                        ),
                        SizedBox(height: 25.h),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff000000),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit suspendisse fusce ante erat nunc, ultricies. Lorem ipsum dolor sit amet,',
                                style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff5A5A5A),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 13.w),
            child: const Divider(
              color: Color.fromRGBO(90, 90, 90, 1),
              thickness: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 1,
                    child:
                        Icon(Icons.check, color: Color.fromRGBO(2, 160, 8, 1))),
                Expanded(
                  flex: 9,
                  child: Text(
                    'Order delivered on August 20, 2:20 AM by Uttam Sardar (Driver)',
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff5A5A5A),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 20.h),
            child: Text(
              "STATUS",
              style: GoogleFonts.poppins(
                color: const Color(0xff000000),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                      left: 13.w, right: 13.w, top: 3.h, bottom: 2.7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fresh Tomato x 1',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff5A5A5A),
                        ),
                      ),
                      Text(
                        '₹24.2',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff5A5A5A),
                        ),
                      )
                    ],
                  ),
                );
              }),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: Row(
              children: List.generate(20, (index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 1,
                      width: 10,
                      color: const Color(0XFF5A5A5A),
                    ),
                  ),
                );
              }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item Total',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Surge Fee',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery partner fee',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount Applied(abc123)',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff5A5A5A),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                  ),
                ),
                Text(
                  '₹24.2',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: const Color(0xffE20A13),
                borderRadius: BorderRadius.circular(5.sp  ),
              ),
              padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 7.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff5A5A5A),
                  ),
                  Text(
                    'Download Invoice',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
