import 'dart:developer';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/navigation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(142, 0, 0, 0),
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'OTP Verification',
                      style: GoogleFonts.poppins(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        'Enter the OTP you have received to set your password on 91******58',
                        style: GoogleFonts.poppins(
                            fontSize: 11.5.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromRGBO(165, 165, 165, 1)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 39.w),
                    child: PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: false,
                      onCompleted: (v) {
                        log("Completed");
                      },
                      onChanged: (value) {
                        log(value);
                      },
                      beforeTextPaste: (text) {
                        log("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 39.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30 Sec',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromRGBO(165, 165, 165, 1),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            log("resent");
                          },
                          child: Text(
                            'Resend OTP',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromRGBO(226, 10, 19, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 280.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              height: 40.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: const Color.fromRGBO(226, 10, 19, 1),
                ),
                onPressed: () {
                  Get.to(() => const Navigation());
                },
                child: Text(
                  'Verify',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
