import 'package:eat_incredible_app/utils/barrel.dart';

class UseCouponCard extends StatelessWidget {
  final bool isApplyCoupon;
  final GestureTapCallback onTap;
  final GestureTapCallback onTapremove;

  const UseCouponCard(
      {super.key,
      required this.onTap,
      required this.isApplyCoupon,
      required this.onTapremove});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: isApplyCoupon ? () {} : onTap,
        child: Container(
          height: isApplyCoupon ? 7.9.h : 6.5.h,
          width: 93.w,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(226, 10, 19, 0.1),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xffE20A13),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2.0.w, left: 2.0.w),
                        child: Icon(
                          Icons.local_offer_rounded,
                          color: const Color(0xffE20A13),
                          size: 15.sp,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Use Coupons",
                            style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: !isApplyCoupon
                        ? Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 11.sp,
                          )
                        : GestureDetector(
                            onTap: onTapremove,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.poppins(
                                fontSize: 8.5.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffE20A13),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Visibility(
                visible: isApplyCoupon,
                child: Padding(
                  padding: EdgeInsets.only(top: 0.7.h, left: 3.w),
                  child: Text("Apply Offer applied on the bill",
                      style: GoogleFonts.poppins(
                        fontSize: 8.8.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
