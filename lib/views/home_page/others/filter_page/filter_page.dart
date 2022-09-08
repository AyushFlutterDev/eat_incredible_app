import 'dart:developer';
import 'package:animate_do/animate_do.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/addtocart/addtocart_bar.dart';
import 'package:eat_incredible_app/widgets/filter/filter_bar.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:flutter/rendering.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    handleScroll();
  }

  bool _show = true;
  void showFloationButton() {
    setState(() {
      _show = true;
    });
  }

  void hideFloationButton() {
    setState(() {
      _show = false;
    });
  }

  void handleScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        hideFloationButton();
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        showFloationButton();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          'Vegetables',
          style: GoogleFonts.poppins(
              color: const Color.fromRGBO(97, 97, 97, 1),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700),
        )),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromRGBO(97, 97, 97, 1),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Row(
              children: [
                const FilterBar(),
                Expanded(
                  child: SizedBox(
                    width: 70.w,
                    child: ListView.builder(
                        controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 40,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: SizedBox(
                              height: 30.h,
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
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 2.h,
            child: _show
                ? SlideInUp(
                    child: AddtocartBar(
                      iteamCount: 20,
                      onTap: () {
                        log("nothing");
                      },
                      totalAmount: 100.0,
                    ),
                  )
                : Opacity(
                    opacity: 0.0,
                    child: AddtocartBar(
                      iteamCount: 20,
                      onTap: () {
                        log("nothing");
                      },
                      totalAmount: 100.0,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
