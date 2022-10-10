import 'package:eat_incredible_app/controller/category/category_bloc.dart';
import 'package:eat_incredible_app/controller/product_list/product_list_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/utils/messsenger.dart';
import 'package:eat_incredible_app/views/home_page/others/filter_page/filter_page.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomPic(
                imageUrl: "https://i.imgur.com/dt6mgQ3.png",
                height: 120.h,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: BlocConsumer<CategoryBloc, CategoryState>(
                bloc: context.read<CategoryBloc>(),
                listener: (context, state) {
                  state.when(
                      initial: () {},
                      loading: () {},
                      loaded: (_) {},
                      failure: (e) {
                        CustomSnackbar.errorSnackbar("Error", e);
                      });
                },
                builder: (context, state) {
                  return state.maybeWhen(orElse: () {
                    return SizedBox(
                        height: 70.h,
                        child:
                            const Center(child: CircularProgressIndicator()));
                  }, loaded: (category) {
                    return SizedBox(
                      height: 70.h,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: category.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              context.read<ProductListBloc>().add(
                                  ProductListEvent.fetchProductList(
                                      categoryId: category[index].categoryId));
                              Get.to(() => FilterPage(
                                    categoryIndex: index,
                                    categoryId: category[index].categoryId,
                                    categoryName: category[index].name,
                                  ));
                            },
                            child: Card(
                                elevation: 0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomPic(
                                        imageUrl: category[index]
                                            .thumbnail
                                            .toString(),
                                        height: 40.h,
                                        width: 55.w),
                                    Text(category[index].name.toString(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )),
                          );
                        },
                      ),
                    );
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: CustomPic(
                  imageUrl: "https://i.imgur.com/AL3Ra5Q.png",
                  height: 130.h,
                  width: double.infinity),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 100.h,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 40,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Stack(
                          children: [
                            CustomPic(
                                imageUrl:
                                    "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
                                height: 100.h,
                                width: 80.w),
                            Positioned(
                              child: Container(
                                height: 100.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color(0xFF040404),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 9.h,
                              left: 10.w,
                              child: Center(
                                child: Text(
                                  "20% OFF",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
              child: CustomPic(
                  imageUrl: "https://i.imgur.com/7v4Vgbh.png",
                  height: 150.h,
                  width: double.infinity),
            ),
            SizedBox(
              height: 165.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: ProductCard(
                        imageUrl:
                            "https://img.freepik.com/free-photo/indian-chicken-biryani-served-terracotta-bowl-with-yogurt-white-background-selective-focus_466689-72554.jpg?w=996&t=st=1662382774~exp=1662383374~hmac=3195b0404799d307075e5326a2b654503021f07749f8327c762c38418dda67a7",
                        title: "title",
                        disprice: "200",
                        price: "200",
                        quantity: "200",
                        onChanged: (String value) {},
                        ontap: () {
                          Get.to(() => const ProductDetails());
                        },
                        percentage: '20%',
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
