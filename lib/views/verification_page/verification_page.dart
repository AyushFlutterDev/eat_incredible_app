import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 73.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                    child: Text(
                      'OTP Verification',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: 90.w,
                      child: Text(
                        'Enter the OTP you have received to set your password on 91******58',
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  SizedBox(
                    width: 76.w,
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
                  SizedBox(
                    width: 76.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30 Sec',
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
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
                              fontSize: 10.sp,
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
              width: 80.w,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(226, 10, 19, 1),
                ),
                onPressed: () {
                  Get.to(() => const VerificationPage());
                },
                child: const Text('Verify'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
