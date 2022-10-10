import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_incredible_app/controller/product_details/product_details_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/utils/messsenger.dart';
import 'package:eat_incredible_app/views/home_page/others/cart_page/cart_page.dart';
import 'package:eat_incredible_app/widgets/addtocart/addtocart_bar.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int current = 0;
  final CarouselController controller = CarouselController();
  int addToCard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
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
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox(
                      height: double.infinity,
                      child: Center(child: CircularProgressIndicator()));
                },
                loaded: (productdetails) {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* Banner ============== >
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: CarouselSlider(
                              carouselController: controller,
                              options: CarouselOptions(
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 10),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 1000),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                scrollDirection: Axis.horizontal,
                                height: 200.h,
                                viewportFraction: 1.0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    current = index;
                                  });
                                },
                              ),
                              items: [
                                productdetails[0].thumbnail.toString(),
                              ].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                        width: double.infinity,
                                        color: const Color.fromRGBO(
                                            245, 239, 240, 1),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: CustomPic(
                                          imageUrl: i,
                                          height: 200.h,
                                          width: double.infinity,
                                        ));
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              productdetails[0].thumbnail.toString(),
                            ].asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    controller.animateToPage(entry.key),
                                child: Container(
                                  width: 9.sp,
                                  height: 9.sp,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 7.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: current == entry.key
                                          ? const Color.fromRGBO(226, 10, 19, 1)
                                          : const Color.fromRGBO(
                                              223, 223, 223, 1)),
                                ),
                              );
                            }).toList(),
                          ),
                          //* Banner ============== >
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 11.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productdetails[0].productName.toString(),
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(44, 44, 44, 1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.share,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      size: 14.sp,
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 13.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productdetails[0].weight.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              148, 148, 148, 1)),
                                    ),
                                    Text(
                                      "₹ ${productdetails[0].salePrice.toString()}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              44, 44, 44, 1)),
                                    ),
                                  ],
                                ),
                                addToCard == 0
                                    ? GestureDetector(
                                        onTap: (() {
                                          setState(() {
                                            addToCard = 1;
                                          });
                                        }),
                                        child: Container(
                                          height: 22.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    2, 160, 8, 1)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Add",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp,
                                                  color: const Color.fromRGBO(
                                                      2, 160, 8, 1),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 60.w,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              GestureDetector(
                                                onTap: (() {
                                                  setState(() {
                                                    if (addToCard > 0) {
                                                      addToCard--;
                                                    }
                                                  });
                                                }),
                                                child: SizedBox(
                                                  width: 20.w,
                                                  height: 22.h,
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: Colors.white,
                                                    size: 15.sp,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                                height: 22.h,
                                                child: Center(
                                                  child: Text(
                                                    addToCard.toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12.sp,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: (() {
                                                  setState(() {
                                                    addToCard++;
                                                  });
                                                }),
                                                child: SizedBox(
                                                  width: 20.w,
                                                  height: 22.h,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 13.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.w, vertical: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Product Details',
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(44, 44, 44, 1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Description',
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(44, 44, 44, 1),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                ReadMoreText(
                                  productdetails[0].description.toString(),
                                  trimLines: 4,
                                  colorClickableText:
                                      const Color.fromARGB(192, 226, 10, 17),
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: ' Show less',
                                  moreStyle: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.normal,
                                    color: const Color.fromRGBO(226, 10, 19, 1),
                                  ),
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromRGBO(
                                          148, 148, 148, 1),
                                      fontSize: 10.5.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  'View Similar Items',
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 165.h,
                            child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: productdetails.length - 1,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  index = index + 1;
                                  return Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: ProductCard(
                                      imageUrl: productdetails[index]
                                          .thumbnail
                                          .toString(),
                                      title: productdetails[index]
                                          .productName
                                          .toString(),
                                      disprice: productdetails[index]
                                          .originalPrice
                                          .toString(),
                                      price: productdetails[index]
                                          .salePrice
                                          .toString(),
                                      quantity: productdetails[index]
                                          .weight
                                          .toString(),
                                      onChanged: (String value) {},
                                      ontap: () {
                                        context.read<ProductDetailsBloc>().add(
                                            ProductDetailsEvent
                                                .getproductdetails(
                                                    productId:
                                                        productdetails[index]
                                                            .id
                                                            .toString()));
                                        Get.to(const ProductDetails());
                                      },
                                      percentage: '10%',
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 70.h,
                          )
                        ]),
                  );
                },
              );
            },
          ),
          Positioned(
            bottom: 10.h,
            child: AddtocartBar(
              iteamCount: 20,
              onTap: () {
                Get.to(() => const CartPage());
              },
              totalAmount: 100.0,
            ),
          )
        ],
      ),
    );
  }
}
