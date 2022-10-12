import 'dart:developer';
import 'package:eat_incredible_app/controller/verify_otp/verify_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  final String? email;
  const VerificationPage({super.key, required this.email});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final TextEditingController _codeController = TextEditingController();
  bool isResendOtp = false;
  int timeCount = 30;

  @override
  void initState() {
    super.initState();
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
                        'Enter the OTP you have received to set your password on ${widget.email}',
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
                      onCompleted: (v) {},
                      onChanged: (value) async {
                        if (_codeController.text.length == 4) {
                          context.read<VerifyBloc>().add(VerifyEvent.verify(
                                phone: widget.email!,
                                otp: _codeController.text,
                              ));
                        }
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
                        !isResendOtp
                            ? Row(
                                children: [
                                  TimerCountdown(
                                    timeTextStyle: GoogleFonts.poppins(
                                      fontSize: 11.5.sp,
                                      fontWeight: FontWeight.normal,
                                      color: const Color.fromARGB(
                                          255, 104, 104, 104),
                                    ),
                                    enableDescriptions: false,
                                    format: CountDownTimerFormat.secondsOnly,
                                    endTime: DateTime.now().add(
                                      Duration(
                                        seconds: timeCount,
                                      ),
                                    ),
                                    onEnd: () {
                                      setState(() {
                                        isResendOtp = true;
                                      });
                                    },
                                  ),
                                  Text(' sec',
                                      style: TextStyle(
                                          color: const Color.fromRGBO(
                                              165, 165, 165, 1),
                                          fontSize: 12.5.sp)),
                                ],
                              )
                            : Text('0 sec ',
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(165, 165, 165, 1),
                                    fontSize: 12.5.sp)),
                        isResendOtp
                            ? TextButton(
                                onPressed: () {
                                  setState(() {
                                    isResendOtp = false;
                                    timeCount = 30;
                                  });
                                },
                                child: Text(
                                  'Resend OTP',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: const Color.fromRGBO(226, 10, 19, 1),
                                  ),
                                ),
                              )
                            : TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Resend OTP',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color:
                                        const Color.fromRGBO(165, 165, 165, 1),
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
            BlocConsumer<VerifyBloc, VerifyState>(
              listener: (context, state) {
                state.when(
                    initial: () {},
                    loading: () {},
                    loaded: (lodedData) {
                      Get.to(() => const Navigation());
                    },
                    failure: (e) {
                      Get.snackbar(
                        'Error',
                        e,
                        backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                        colorText: Colors.white,
                        snackPosition: SnackPosition.TOP,
                      );
                    });
              },
              builder: (context, state) {
                return state.when(
                    initial: () {
                      return VerifyBtn(
                          codeController: _codeController, widget: widget);
                    },
                    loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                    loaded: (loadedData) {
                      return VerifyBtn(
                          codeController: _codeController, widget: widget);
                    },
                    failure: (e) {
                      return VerifyBtn(
                          codeController: _codeController, widget: widget);
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class VerifyBtn extends StatelessWidget {
  const VerifyBtn({
    Key? key,
    required TextEditingController codeController,
    required this.widget,
  })  : _codeController = codeController,
        super(key: key);

  final TextEditingController _codeController;
  final VerificationPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: () async {
          if (_codeController.text.length == 4) {
            context.read<VerifyBloc>().add(VerifyEvent.verify(
                  phone: widget.email!,
                  otp: _codeController.text,
                ));
          } else {
            Get.snackbar(
              'Error',
              'Please enter a valid OTP',
              backgroundColor: const Color.fromARGB(255, 255, 17, 0),
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP,
            );
          }
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
    );
  }
}
