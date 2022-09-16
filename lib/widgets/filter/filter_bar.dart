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
      width: 75.w,
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: ConstantData.vegCategory.length,
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
                          imageUrl: ConstantData.vegCategory[index]["image"],
                          height: 38.h,
                          width: 40.w),
                    ),
                    Text(ConstantData.vegCategory[index]["name"],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: index == filterIteam
                                ? Colors.white
                                : const Color.fromRGBO(120, 120, 120, 1.0),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400)),
                  ],
                )),
          );
        },
      ),
    );
  }
}
