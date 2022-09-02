import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/acount_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/home_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/offers_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/orders_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const OfferPage(),
    const OrderPage(),
    const AcountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(11.h),
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [  
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(width: 1.h),
                        const Text(
                          '237, Sane Guruji Marg, Jacob Circle',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.whatsapp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottombar(),
      body: pages[pageIndex],
    );
  }

  Container bottombar() {
    return Container(
      height: 7.5.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Container(
                  height: 7.5.h,
                  color: pageIndex == 0
                      ? const Color.fromRGBO(226, 10, 19, 1)
                      : Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(1.0.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        pageIndex == 0
                            ? Icon(
                                Icons.home_filled,
                                color: Colors.white,
                                size: 18.sp,
                              )
                            : Icon(
                                Icons.home_outlined,
                                color: const Color.fromRGBO(120, 120, 120, 1),
                                size: 18.sp,
                              ),
                        Text("Home",
                            style: GoogleFonts.poppins(
                                color: pageIndex == 0
                                    ? Colors.white
                                    : const Color.fromRGBO(120, 120, 120, 1),
                                fontSize: 9.sp))
                      ],
                    ),
                  )),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Container(
                  height: 7.5.h,
                  color: pageIndex == 1
                      ? const Color.fromRGBO(226, 10, 19, 1)
                      : Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(1.0.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        pageIndex == 1
                            ? Icon(
                                Icons.local_offer_outlined,
                                color: Colors.white,
                                size: 18.sp,
                              )
                            : Icon(
                                Icons.local_offer_outlined,
                                color: const Color.fromRGBO(120, 120, 120, 1),
                                size: 18.sp,
                              ),
                        Text("Offers",
                            style: GoogleFonts.poppins(
                                color: pageIndex == 1
                                    ? Colors.white
                                    : const Color.fromRGBO(120, 120, 120, 1),
                                fontSize: 9.sp))
                      ],
                    ),
                  )),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Container(
                  height: 7.5.h,
                  color: pageIndex == 2
                      ? const Color.fromRGBO(226, 10, 19, 1)
                      : Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(1.0.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        pageIndex == 2
                            ? Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 18.sp,
                              )
                            : Icon(
                                Icons.shopping_bag_outlined,
                                color: const Color.fromRGBO(120, 120, 120, 1),
                                size: 18.sp,
                              ),
                        Text("Orders",
                            style: GoogleFonts.poppins(
                                color: pageIndex == 2
                                    ? Colors.white
                                    : const Color.fromRGBO(120, 120, 120, 1),
                                fontSize: 9.sp))
                      ],
                    ),
                  )),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Container(
                  height: 7.5.h,
                  color: pageIndex == 3
                      ? const Color.fromRGBO(226, 10, 19, 1)
                      : Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(1.0.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        pageIndex == 3
                            ? Icon(
                                Icons.person_outline,
                                color: Colors.white,
                                size: 18.sp,
                              )
                            : Icon(
                                Icons.person_outline,
                                color: const Color.fromRGBO(120, 120, 120, 1),
                                size: 18.sp,
                              ),
                        Text("Account",
                            style: GoogleFonts.poppins(
                                color: pageIndex == 3
                                    ? Colors.white
                                    : const Color.fromRGBO(120, 120, 120, 1),
                                fontSize: 9.sp))
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
