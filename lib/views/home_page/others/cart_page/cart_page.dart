import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/location_search/location_search.dart';
import 'package:eat_incredible_app/views/home_page/others/order_confirm/order_confirm.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/addtocart/cart_product.dart';
import 'package:eat_incredible_app/widgets/coupon_code/use_coupon.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
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
          child: Text("Cart",
              style: GoogleFonts.poppins(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
        ),
        actions: [
          Visibility(
            visible: false,
            child: IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.8.h),
            Center(
              child: Container(
                height: 6.5.h,
                width: 93.w,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 160, 8, 0.1),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xff02A008),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Add items to it now",
                          style: GoogleFonts.poppins(
                            fontSize: 8.5.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff02A008),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text("0",
                          style: GoogleFonts.poppins(
                            fontSize: 8.5.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff02A008),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            ListTile(
              title: const Text("Delivery in 1-2 days",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
              subtitle: const Text("4 items",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )),
              leading: Icon(
                Icons.delivery_dining,
                color: Colors.black,
                size: 33.sp,
              ),
            ),
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    child: CartProduct(
                      imageUrl:
                          "https://img.freepik.com/free-photo/schezwan-noodles-szechwan-vegetable-hakka-noodles-chow-mein-is-popular-indo-chinese-recipes-served-bowl-plate-with-wooden-chopsticks_466689-74647.jpg?w=900&t=st=1662969364~exp=1662969964~hmac=c41dee22f1ac6a01219a38319bfe94db1d67b29045359ee7c91ebedbf495c5f6",
                      title: "Chicken",
                      disprice: 200,
                      price: 300,
                      quantity: 1,
                      iteam: 2,
                      onChanged: (String value) {
                        log("value: $value");
                      },
                      ontap: () {},
                    ),
                  );
                }),
            Padding(
              padding: EdgeInsets.only(
                left: 3.0.w,
                right: 3.0.w,
                top: 2.h,
                bottom: 1.h,
              ),
              child: const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.4.w, bottom: 2.h),
                  child: Text("Before you checkout",
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, fontWeight: FontWeight.w600)),
                ),
              ],
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
            SizedBox(height: 2.h),
            UseCouponCard(
              onTap: () {
                log("Use Coupon");
              },
              isApplyCoupon: true,
              onTapremove: () {
                log("Remove Coupon");
              },
            ),
            ListTile(
              title: Text("Item Total (incl. taxes)",
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              trailing:
                  Text("₹ 200", style: GoogleFonts.poppins(fontSize: 10.sp)),
            ),
            ListTile(
              title: Text("Delivery Charge",
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              subtitle: Text(
                  "Shop for ₹ 25 more, to save ₹ 10 on delivery charge",
                  style: GoogleFonts.poppins(fontSize: 8.5.sp)),
              trailing:
                  Text("₹ 200", style: GoogleFonts.poppins(fontSize: 10.sp)),
            ),
            ListTile(
              title: Text("Bill Total",
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
              trailing: Text("₹ 27.00",
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 5.h,
              width: 93.w,
              child: ElevatedButton(
                onPressed: _showBottomSheet,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff02A008),
                ),
                child: Text("Checkout",
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  // create a method to show the bottom sheet
  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
              height: 20.h,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.home,
                        color: const Color(0xffE20A13),
                        size: 19.sp,
                      ),
                      title: Text("Home",
                          style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                      subtitle: Text(
                          "B-1/2, 2nd Floor, Sector 63, Noida 201301  Sector 63, Noida 201301   ",
                          style: GoogleFonts.poppins(fontSize: 8.sp)),
                      trailing: TextButton(
                          onPressed: () {
                            Get.to(() => const LocationSearchPage());
                          },
                          child: Text("Change",
                              style: GoogleFonts.poppins(
                                fontSize: 9.5.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 240, 0, 0),
                              ))),
                    ),
                    SizedBox(
                      height: 5.h,
                      width: 93.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAll(() => const OrderConfirmPage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff02A008),
                        ),
                        child: Text("Select Payment",
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ]));
        });
  }
}
