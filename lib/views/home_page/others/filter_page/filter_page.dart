import 'package:animate_do/animate_do.dart';
import 'package:eat_incredible_app/controller/product_details/product_details_bloc.dart';
import 'package:eat_incredible_app/controller/product_list/product_list_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/utils/messsenger.dart';
import 'package:eat_incredible_app/views/home_page/others/Item_search/item_search.dart';
import 'package:eat_incredible_app/views/home_page/others/cart_page/cart_page.dart';
import 'package:eat_incredible_app/views/home_page/others/product_details/product_details.dart';
import 'package:eat_incredible_app/widgets/addtocart/addtocart_bar.dart';
import 'package:eat_incredible_app/widgets/filter/filter_bar.dart';
import 'package:eat_incredible_app/widgets/product_card/product_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterPage extends StatefulWidget {
  final int categoryIndex;
  final String categoryName;
  final String categoryId;
  const FilterPage(
      {super.key,
      required this.categoryIndex,
      required this.categoryName,
      required this.categoryId});

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
          widget.categoryName,
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
                FilterBar(
                  categoryIndex: widget.categoryIndex,
                ),
                Expanded(
                  child: BlocConsumer<ProductListBloc, ProductListState>(
                    bloc: context.read<ProductListBloc>(),
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
                          return SizedBox(
                            height: 70.h,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                        loaded: (productList) {
                          return GridView.builder(
                              controller: _scrollController,
                              itemCount: productList.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 165.h,
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return FadeInUp(
                                    child: ProductCard(
                                  imageUrl:
                                      productList[index].thumbnail.toString(),
                                  title:
                                      productList[index].productName.toString(),
                                  disprice: productList[index]
                                      .originalPrice
                                      .toString(),
                                  price:
                                      productList[index].salePrice.toString(),
                                  quantity:
                                      productList[index].weight.toString(),
                                  onChanged: (value) {},
                                  ontap: () {
                                    context.read<ProductDetailsBloc>().add(
                                            ProductDetailsEvent
                                                .getproductdetails(
                                          productId:
                                              productList[index].id.toString(),
                                        ));
                                    Get.to(() => const ProductDetails());
                                  },
                                  percentage: '30 %',
                                ));
                              });
                        },
                      );
                    },
                  ),
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
                : const Opacity(
                    opacity: 0.0,
                    child: SizedBox(),
                  ),
          )
        ],
      ),
    );
  }
}
