import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/filter_page/filter_page.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

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
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 2.h,
            ),
            CustomPic(
                imageUrl:
                    "https://img.freepik.com/free-vector/cartoon-indian-restaurant-background_52683-69329.jpg?w=740&t=st=1662368268~exp=1662368868~hmac=856685abe2bd49b8068f6338350ff16c16e531196bc0cbb4c4961b341e0c7462",
                height: 18.h,
                width: 95.w),
            SizedBox(
              height: 1.5.h,
            ),
            SizedBox(
              height: 12.h,
              width: 95.w,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => const FilterPage());
                    },
                    child: Card(
                        elevation: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomPic(
                                imageUrl:
                                    "https://cdn3d.iconscout.com/3d/premium/thumb/food-with-handbag-3311567-2754877@0.png",
                                height: 7.h,
                                width: 25.w),
                            Text("Green Salad",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal)),
                          ],
                        )),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: CustomPic(
                  imageUrl:
                      "https://img.freepik.com/free-vector/chinese-food-background-illustrated_52683-68274.jpg?w=1060&t=st=1662373740~exp=1662374340~hmac=0ff618729f93737903196d5c2516a808107b8a39747af5fbe71ec394d97a5ca1",
                  height: 20.h,
                  width: 100.w),
            ),
            SizedBox(
              height: 15.h,
              width: 95.w,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(1.w),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Stack(
                        children: [
                          CustomPic(
                              imageUrl:
                                  "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
                              height: 14.h,
                              width: 23.w),
                          Positioned(
                            child: Container(
                              height: 15.h,
                              width: 23.w,
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
                            bottom: 1.5.h,
                            left: 4.w,
                            child: Text(
                              "20% OFF",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: CustomPic(
                  imageUrl:
                      "https://img.freepik.com/free-vector/chinese-food-background-illustrated_52683-68275.jpg?w=1060&t=st=1662373968~exp=1662374568~hmac=397d2798c6883b1353ff3c8a7324f07d412350806592a8b267a922adec79c823",
                  height: 20.h,
                  width: 90.w),
            ),
            SizedBox(
              height: 29.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: ProductCard(
                        imageUrl:
                            "https://img.freepik.com/free-photo/indian-chicken-biryani-served-terracotta-bowl-with-yogurt-white-background-selective-focus_466689-72554.jpg?w=996&t=st=1662382774~exp=1662383374~hmac=3195b0404799d307075e5326a2b654503021f07749f8327c762c38418dda67a7",
                        title: "title",
                        disprice: 200,
                        price: 170,
                        quantity: 500,
                        onChanged: (String value) {},
                        ontap: () {
                          Get.to(() => const ProductDetails());
                        },
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
