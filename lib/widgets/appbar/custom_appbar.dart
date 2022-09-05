import 'package:eat_incredible_app/utils/barrel.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.all(2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(width: 1.h),
                      const Text(
                        '237, Sane Guruji Marg, Jacob Circle',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.whatsapp,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            // Search bar
            Container(
              height: 6.h,
              margin: EdgeInsets.symmetric(horizontal: 2.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0.5.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: Text(
                      'Search',
                      style: GoogleFonts.poppins(
                        fontSize: 12.5.sp,
                        color: const Color.fromRGBO(46, 46, 46, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.0.w),
                    child: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
