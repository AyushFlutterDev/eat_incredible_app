import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});
  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  int filterIteam = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                filterIteam = index;
              });
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 1.5.h),
                color: index == filterIteam ? Colors.red : Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: CustomPic(
                          imageUrl:
                              "https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png",
                          height: 13.w,
                          width: 13.w),
                    ),
                    Text("Green Salad",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: index == filterIteam
                                ? Colors.white
                                : const Color.fromRGBO(120, 120, 120, 1.0),
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600)),
                  ],
                )),
          );
        },
      ),
    );
  }
}
