import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class CouponsCode extends StatefulWidget {
  const CouponsCode({super.key});

  @override
  State<CouponsCode> createState() => _CouponsCodeState();
}

class _CouponsCodeState extends State<CouponsCode> {
  TextEditingController cupponcodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Center(
            child: Text('Coupons ',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                )),
          ),
          actions: [
            Opacity(
              opacity: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 10.h),
          Container(
            height: 45.h,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: cupponcodeController,
              decoration: InputDecoration(
                hintText: 'Enter coupon code',
                hintStyle: GoogleFonts.poppins(
                  color: const Color.fromRGBO(60, 60, 67, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.sp),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 235, 234, 234),
                suffix: InkWell(
                  onTap: () {
                    log('cupponcode: ${cupponcodeController.text}');
                    Get.back();
                  },
                  child: Text(
                    'Apply',
                    style: TextStyle(
                      color: const Color(0xff787878),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Avalible Coupons',
                  style: TextStyle(
                    color: const Color.fromRGBO(4, 4, 4, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      cupponcodeController.text = 'G4A5$index';
                    });
                  },
                  child: CustomPic(
                      imageUrl:
                          'https://i.imgur.com/0cbymTF_d.webp?maxwidth=760&fidelity=grand',
                      height: 155.h,
                      width: double.infinity),
                ),
              );
            },
          ),
        ])));
  }
}
