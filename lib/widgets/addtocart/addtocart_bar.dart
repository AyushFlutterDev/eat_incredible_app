import 'package:eat_incredible_app/utils/barrel.dart';

class AddtocartBar extends StatelessWidget {
  final int iteamCount;
  final double totalAmount;
  final GestureTapCallback onTap;

  const AddtocartBar(
      {super.key,
      required this.iteamCount,
      required this.totalAmount,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50.h,
          width: 320.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(2, 160, 8, 1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$iteamCount items",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Rs. ${totalAmount.toString()}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(children: [
                  Text(
                    "View Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 10,
                  ),
                ])
              ],
            ),
          )),
    );
  }
}
