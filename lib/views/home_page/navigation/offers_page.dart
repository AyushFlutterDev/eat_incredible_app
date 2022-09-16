import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: CustomPic(
                  imageUrl: "https://i.imgur.com/83570mV.png",
                  height: 130.h,
                  width: double.infinity),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, bottom: 15.h),
              child: Text("Great Deals",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 70.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ConstantData.offers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: CustomPic(
                            imageUrl: ConstantData.offers[index],
                            height: 70.h,
                            width: 130.w),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 13.h, bottom: 3.h),
              child: Text("Only for you",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
              child: CustomPic(
                  imageUrl: "https://i.imgur.com/StouOjH.png",
                  height: 130.h,
                  width: double.infinity),
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
