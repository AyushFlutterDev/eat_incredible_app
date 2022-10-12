import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_incredible_app/controller/login/login_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/navigation.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:eat_incredible_app/views/verification_page/verification_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  Country? selectedCountry;
  String selectedCountryCode = '+91';

  final TextEditingController _phoneController = TextEditingController();

  // void _showCountryPicker() async {
  //   final country = await showCountryPickerSheet(context, cornerRadius: 15);
  //   if (country != null) {
  //     setState(() {
  //       selectedCountry = country;
  //       selectedCountryCode = country.callingCode;
  //     });
  //   }
  // }

  ConstantData constantData = ConstantData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 30.h,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'I agree with your',
              style: TextStyle(
                color: const Color.fromRGBO(60, 60, 67, 1),
                fontSize: 12.sp,
              ),
              children: [
                TextSpan(
                  text: ' Terms',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: const Color.fromRGBO(60, 60, 67, 1),
                    fontSize: 12.sp,
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
                height: 390.h,
                autoPlayCurve: Curves.easeInSine,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
              ),
              items: constantData.signupPageBanner.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      image,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Get Fresh Fruits and ',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  Text(
                    ' vegetables at your doresteps',
                    style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    'Log in or Sign Up',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: Container(
                height: 47.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        // _showCountryPicker();
                      }),
                      child: SizedBox(
                        width: 60.w,
                        child: Center(
                            child: Text(selectedCountry?.callingCode ?? '+91')),
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
                          controller: _phoneController,
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //! Login Button =========================== >
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                state.when(
                    initial: () {},
                    loading: () {},
                    loaded: (lodedData) {
                      Get.to(() => VerificationPage(
                            email: _phoneController.text,
                          ));
                    },
                    failure: (e) {
                      Get.snackbar(
                        'Error',
                        e,
                        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                        colorText: Colors.white,
                      );
                    });
              },
              builder: (context, state) {
                return state.maybeWhen(
                  initial: () {
                    return Loginbtn(
                      phoneController: _phoneController,
                      countryCode: selectedCountryCode,
                    );
                  },
                  orElse: () {
                    return Loginbtn(
                      phoneController: _phoneController,
                      countryCode: selectedCountryCode,
                    );
                  },
                  loading: (() {
                    return SizedBox(
                        height: 70.h,
                        child:
                            const Center(child: CircularProgressIndicator()));
                  }),
                  loaded: (logindata) {
                    return Loginbtn(
                      phoneController: _phoneController,
                      countryCode: selectedCountryCode,
                    );
                  },
                );
              },
            ),
            //! Login Button =========================== >
            SizedBox(
              height: 10.h,
            ),
            TextButton(
              onPressed: () {
                Get.off(() => const Navigation());
              },
              child: Text(
                'Skip Log In',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff3C3C43),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Loginbtn extends StatelessWidget {
  const Loginbtn({
    Key? key,
    required TextEditingController phoneController,
    required this.countryCode,
  })  : _phoneController = phoneController,
        super(key: key);

  final TextEditingController _phoneController;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
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
          log(_phoneController.text);
          log(countryCode);
          if (_phoneController.text.length != 10) {
            Get.snackbar(
              'Error',
              'Please enter your Vaild phone number',
              backgroundColor: const Color.fromARGB(255, 255, 17, 0),
              colorText: Colors.white,
            );
          } else {
            context.read<LoginBloc>().add(LoginEvent.login(
                phone: _phoneController.text, countryCode: countryCode));
          }
        },
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
