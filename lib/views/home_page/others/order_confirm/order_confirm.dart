import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/navigation.dart';

class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              Image.asset(
                'assets/images/order.png',
                height: 17.h,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your order has been',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffE20A13),
                    ),
                  ),
                  Text(
                    'placed',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffE20A13),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit suspendisse fusce ante erat nunc, ultricies.',
                    style: GoogleFonts.poppins(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              SizedBox(height: 1.h),
              ListTile(
                title: Text(
                  'Order ID',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View details',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffE20A13),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '₹ 1.23',
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 5.w, right: 5.w, top: 1.5.h, bottom: 7.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order number',
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      '12312312312',
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  height: 5.h,
                  width: 80.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(() => const Navigation());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffE20A13),
                    ),
                    child: Text("Continue Shoping",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
