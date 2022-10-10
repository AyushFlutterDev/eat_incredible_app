import 'dart:developer';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/repo/login_repo.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  final String? email;
  const VerificationPage({super.key, required this.email});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final TextEditingController _codeController = TextEditingController();
  Future _verify() async {
    LoginRepo().verify(widget.email!, _codeController.text).then((value) {
      var result = value;
      result.when(success: (data) {
        log(data['msg']);
      }, failure: (error) {
        Get.snackbar(
          'Error',
          NetworkExceptions.getErrorMessage(error),
          backgroundColor: const Color.fromARGB(255, 255, 17, 0),
          colorText: Colors.white,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                      controller: _codeController,
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        selectedColor: const Color.fromARGB(68, 255, 0, 0),
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: const Color.fromARGB(0, 255, 3, 3),
                      enableActiveFill: false,
                      onCompleted: (v) {
                        log("Completed");
                      },
                      onChanged: (value) {
                        log(value);
                      },
                      beforeTextPaste: (text) {
                        log("Allowing to paste $text");
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
                          onTap: () {},
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
                  _verify();
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
