import 'dart:developer';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Center(
          child: Text("search",
              style: GoogleFonts.poppins(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 8.h),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 4.9.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.sp),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 235, 234, 234),
                      hintText: 'Search',
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 15.h, bottom: 15.h),
              child: Row(
                children: [
                  Text("Popular In your Area",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w600)),
                ],
              ),
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
                      padding: EdgeInsets.only(left: 12.w),
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
            Padding(
              padding: EdgeInsets.only(left: 13.w, top: 20.h, bottom: 6.h),
              child: Row(
                children: [
                  Text("Trending Searchs",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 8.w, top: 1.h),
                      child: FilterChip(
                        side: const BorderSide(color: Colors.grey),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        label: Text('Vegetables',
                            style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(120, 120, 120, 1),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400)),
                        onSelected: (bool value) {
                          log("$index iteam$value");
                        },
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.w, top: 13.h, bottom: 15.h),
              child: Row(
                children: [
                  Text("your may also like",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w600)),
                ],
              ),
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
                      padding: EdgeInsets.only(left: 12.w),
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
          ],
        ),
      ),
    );
  }
}
