import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/listcard/list_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(
          child: Text(
            'About',
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(97, 97, 97, 1),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: IconButton(
              icon: const Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 1)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 1.5.h),
                  Text(
                    'Eat Incredible is a food delivery app that allows you to order food from your  Eat Incredible is a food delivery app that  passionate about food and technology. We are committed to providing you with the best food delivery experience.  favorite restaurants and have it delivered to your doorstep. We are a team of young and vibrant individuals who are passionate about food and technology. We are committed to providing you with the best food delivery experience. Eat Incredible is a food delivery app that allows you to order food from your favorite restaurants and have it delivered to your doorstep. We are a team of young and vibrant individuals who are passionate about food and technology. We are committed to providing you with the best food delivery experience.',
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Column(
                    children: [
                      ListCard(
                        title: "Privacy Policy",
                        isicon: false,
                        onTap: () {},
                      ),
                      SizedBox(height: 2.h),
                      ListCard(
                        title: "Terms And Conditions",
                        isicon: false,
                        onTap: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
