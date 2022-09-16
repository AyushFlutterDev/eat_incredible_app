import 'package:animate_do/animate_do.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/Item_search/item_search.dart';
import 'package:eat_incredible_app/views/home_page/others/cart_page/cart_page.dart';
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
        elevation: 0.5,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            Get.back();
          },
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
            onPressed: () {
              Get.to(() => const ItemSearch());
            },
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              children: [
                const FilterBar(),
                Expanded(
                  child: GridView.builder(
                      controller: _scrollController,
                      itemCount: 300,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 165.h,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return FadeInUp(
                            child: ProductCard(
                                imageUrl:
                                    "https://img.freepik.com/free-vector/realistic-tomato-isolated_1284-6146.jpg?size=338&ext=jpg&ga=GA1.2.1083069314.1662365651",
                                title: "Green salad",
                                disprice: 300,
                                price: 220,
                                quantity: 300,
                                onChanged: (value) {},
                                ontap: () {
                                  Get.to(() => const ProductDetails());
                                }));
                      }),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: _show
                ? SlideInUp(
                    child: AddtocartBar(
                      iteamCount: 20,
                      onTap: () {
                        Get.to(() => const CartPage());
                      },
                      totalAmount: 100.0,
                    ),
                  )
                : Opacity(
                    opacity: 0.0,
                    child: AddtocartBar(
                      iteamCount: 20,
                      onTap: () {
                        Get.to(() => const CartPage());
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
