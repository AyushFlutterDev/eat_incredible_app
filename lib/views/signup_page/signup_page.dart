import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/verification_page/verification_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 6.h,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'I agree with your',
              style: TextStyle(
                color: const Color.fromRGBO(60, 60, 67, 1),
                fontSize: 10.sp,
              ),
              children: [
                TextSpan(
                  text: ' Terms',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: const Color.fromRGBO(60, 60, 67, 1),
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 56.h,
                autoPlayCurve: Curves.easeInSine,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      "assets/images/signup_pic_$i.png",
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Get Fresh Fruits and ',
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    ' vegetables at your doresteps',
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Log in or Sign Up',
                    style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.6.h),
              child: Container(
                height: 7.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (() {}),
                      child: SizedBox(
                        width: 14.w,
                        child: const Center(child: Text("+91")),
                      ),
                    ),
                    Container(
                      color: Colors.blueGrey,
                      height: 30,
                      width: 1,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            hintText: '1234 567 7896',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email can not be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 88.w,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(226, 10, 19, 1),
                ),
                onPressed: () {
                  Get.to(() => const VerificationPage());
                },
                child: const Text('Continue'),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Skip Log In',
              style: GoogleFonts.poppins(
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
