import 'package:eat_incredible_app/utils/barrel.dart';

class AddressCard extends StatelessWidget {
  final String address;
  final GestureTapCallback onEdit;
  final GestureTapCallback onDelete;
  final String name;

  const AddressCard(
      {super.key,
      required this.address,
      required this.onEdit,
      required this.onDelete,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 93.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const Icon(Icons.home_filled, color: Color(0xffE20A13)),
                SizedBox(width: 2.9.w),
                Text(name,
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.8.w, top: 0.8.h),
              child: Text(address,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff404040),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.8.w, top: 1.h, bottom: 0.5.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onEdit,
                    child: Text('Edit',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffE20A13),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: onDelete,
                    child: Text('Delete',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff8C8C8C),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.w),
              child: const Divider(
                color: Color(0xff000000),
                thickness: 1,
              ),
            )
          ])
        ],
      ),
    );
  }
}
