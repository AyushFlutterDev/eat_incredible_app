import 'package:eat_incredible_app/utils/barrel.dart';

class ListCard extends StatelessWidget {
  final String title;
  final bool isicon;
  final GestureTapCallback onTap;
  const ListCard(
      {super.key,
      required this.title,
      required this.isicon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 11.5.sp,
                    color: const Color(0xff3C3C3C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Visibility(
                  visible: isicon,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: const Color(0xff3C3C3C),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
