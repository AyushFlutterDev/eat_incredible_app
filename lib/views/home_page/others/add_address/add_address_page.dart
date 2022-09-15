import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/chips/address_chip.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
          child: SizedBox(
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xffE20A13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.sp),
                ),
                padding: EdgeInsets.symmetric(vertical: 1.5.h),
              ),
              child: const Text(
                "Save Changes",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: Color.fromRGBO(0, 0, 0, 1)),
            onPressed: () => Get.back(),
          ),
          title: Center(
            child: Text(
              'Add Address',
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
                icon:
                    const Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 1)),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.location_on,
                    color: Color.fromRGBO(226, 10, 19, 1),
                  ),
                  title: Text(
                    'Bharat Commercial Centre',
                    style: TextStyle(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    '10, Bharat Commercial Centre, Sect 18, Turbhe, Navi Mumbai',
                    style: TextStyle(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Pincode',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE20A13)),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'HOUSE / FLAT / BLOCK NO.',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE20A13)),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'APARTMENT / ROAD / AREA (OPTIONAL)',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE20A13)),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'ADD DESCRIPTION (OPTIONAL)',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE20A13)),
                    ),
                  ),
                ),
                SizedBox(height: 19.h),
                Text("Save As",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(97, 97, 97, 1),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 25.h),
                AddressChips(
                  onSelected: (String value) {
                    log(value);
                  },
                )
              ],
            )));
  }
}
