import 'package:eat_incredible_app/controller/category/category_bloc.dart';
import 'package:eat_incredible_app/controller/product_list/product_list_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FilterBar extends StatefulWidget {
  final int categoryIndex;
  const FilterBar({super.key, required this.categoryIndex});
  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  final ItemScrollController itemScrollController = ItemScrollController();

  late int filterIteam;
  int all_index = 98989;
  @override
  void initState() {
    filterIteam = widget.categoryIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      height: double.infinity,
      child: BlocConsumer<CategoryBloc, CategoryState>(
        bloc: context.read<CategoryBloc>(),
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return SizedBox(
                height: 70.h,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            loaded: (categoryData) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ProductListBloc>().add(
                            ProductListEvent.fetchProductList(
                                categoryId: all_index.toString()));

                        setState(() {
                          filterIteam = all_index;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.only(bottom: 1.5.h),
                          color: all_index == filterIteam
                              ? Colors.red
                              : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0.sp),
                                child: CustomPic(
                                  imageUrl:
                                      'https://media.istockphoto.com/photos/food-background-with-assortment-of-fresh-organic-fruits-and-picture-id1203599963?k=20&m=1203599963&s=612x612&w=0&h=XY0PiCcaw1HShjCU9JgywVoY5JQC-lZnZfWqyyREOus=',
                                  height: 38.h,
                                  width: 40.w,
                                ),
                              ),
                              Text('All',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: all_index == filterIteam
                                          ? Colors.white
                                          : const Color.fromRGBO(
                                              120, 120, 120, 1.0),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400)),
                            ],
                          )),
                    ),
                    ScrollablePositionedList.builder(
                      itemScrollController: itemScrollController,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categoryData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            context.read<ProductListBloc>().add(
                                ProductListEvent.fetchProductList(
                                    categoryId: categoryData[index]
                                        .categoryId
                                        .toString()));
                            setState(() {
                              filterIteam = index;
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.only(bottom: 1.5.h),
                              color: index == filterIteam
                                  ? Colors.red
                                  : Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0.sp),
                                    child: CustomPic(
                                        imageUrl: categoryData[index]
                                            .thumbnail
                                            .toString(),
                                        height: 38.h,
                                        width: 40.w),
                                  ),
                                  Text(categoryData[index].name.toString(),
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          color: index == filterIteam
                                              ? Colors.white
                                              : const Color.fromRGBO(
                                                  120, 120, 120, 1.0),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              )),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
