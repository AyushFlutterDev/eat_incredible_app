import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: CustomPic(
                    imageUrl:
                        "https://img.freepik.com/free-vector/cartoon-indian-restaurant-background_52683-69329.jpg?w=740&t=st=1662368268~exp=1662368868~hmac=856685abe2bd49b8068f6338350ff16c16e531196bc0cbb4c4961b341e0c7462",
                    height: 130.h,
                    width: double.infinity),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.w, bottom: 1.h),
                child: Text("Great Deals",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: CustomPic(
                    imageUrl:
                        "https://img.freepik.com/free-vector/cartoon-indian-restaurant-background_52683-69329.jpg?w=740&t=st=1662368268~exp=1662368868~hmac=856685abe2bd49b8068f6338350ff16c16e531196bc0cbb4c4961b341e0c7462",
                    height: 130.h,
                    width: double.infinity),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.w, top: 2.h),
                child: Text("Only for you",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
