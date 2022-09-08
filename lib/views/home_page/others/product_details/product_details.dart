import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/addtocart/addtocart_bar.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> imgList = [
    "https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png",
    "https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png",
    "https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png",
  ];
  int current = 0;
  final CarouselController controller = CarouselController();
  int addToCard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  height: 35.h,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
                items: imgList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: 93.w,
                          color: const Color.fromRGBO(245, 239, 240, 1),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: CustomPic(
                              imageUrl: i, height: 35.h, width: 93.w));
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.animateToPage(entry.key),
                    child: Container(
                      width: 7.sp,
                      height: 7.sp,
                      margin: const EdgeInsets.symmetric(
                          vertical: 7.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: current == entry.key
                              ? const Color.fromRGBO(226, 10, 19, 1)
                              : const Color.fromRGBO(223, 223, 223, 1)),
                    ),
                  );
                }).toList(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Onion (pyaz)',
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(44, 44, 44, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          size: 16.sp,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "500 gm",
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(148, 148, 148, 1)),
                        ),
                        Text(
                          "₹ 50",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(44, 44, 44, 1)),
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
                              height: 4.5.h,
                              width: 21.w,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: const Color.fromRGBO(2, 160, 8, 1)),
                              ),
                              child: Center(
                                child: Text(
                                  "Add",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp,
                                      color: const Color.fromRGBO(2, 160, 8, 1),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 4.5.h,
                            width: 21.w,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3)),
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
                                      width: 5.w,
                                      height: 3.4.h,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 11.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                    height: 3.4.h,
                                    child: Center(
                                      child: Text(
                                        addToCard.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
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
                                      width: 5.w,
                                      height: 3.4.h,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 12.sp,
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
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Details',
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(44, 44, 44, 1),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Description',
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(44, 44, 44, 1),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 0.6.h,
                    ),
                    ReadMoreText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc ut aliquam tincidunt, nunc nunc aliquam nunc, eget aliquam nunc nunc sit amet nunc. Sed euismod, nunc ut aliquam tincidunt, nunc nunc aliquam nunc, eget aliquam nunc nunc sit amet nunc.',
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
                          color: const Color.fromRGBO(148, 148, 148, 1),
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 1.8.h,
                    ),
                    Text(
                      'View Similar Items',
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.3.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.5.h,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: ProductCard(
                          imageUrl:
                              "https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png",
                          title: "",
                          disprice: 600,
                          price: 201,
                          quantity: 200,
                          onChanged: (iteam) {},
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetails()));
                          }),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 13.h,
              )
            ]),
          ),
          Positioned(
            bottom: 2.h,
            child: AddtocartBar(
              iteamCount: 20,
              onTap: () {
                log("nothing");
              },
              totalAmount: 100.0,
            ),
          )
        ],
      ),
    );
  }
}
