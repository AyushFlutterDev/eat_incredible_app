import 'package:eat_incredible_app/utils/barrel.dart';

class FaqCard extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  const FaqCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        children: [
          ListTile(
            title: Text(title,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff3C3C3C),
                )),
            trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
            onTap: onTap,
          ),
          const Divider(
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
