import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/acount_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/home_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/offers_page.dart';
import 'package:eat_incredible_app/views/home_page/navigation/orders_page.dart';
import 'package:eat_incredible_app/widgets/appbar/custom_appbar.dart';

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
        preferredSize: pageIndex == 0 || pageIndex == 1
            ? Size.fromHeight(15.h)
            : Size.fromHeight(7.h),
        child: pageIndex == 0 || pageIndex == 1
            ? const CustomAppbar()
            : pageIndex == 2
                ? AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color.fromARGB(255, 80, 80, 80),
                      ),
                    ),
                    title: Center(
                      child: Text(
                        "orders",
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    actions: const [Text("Need Help?")],
                  )
                : AppBar(
                    leading: const Text(""),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Center(
                      child: Text(
                        "Hi Bolder",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    actions: [
                        TextButton(
                            onPressed: () {}, child: const Text("Need Help?")),
                      ]),
      ),
      bottomNavigationBar: Container(
        height: 7.8.h,
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
                    height: 7.8.h,
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
                                  size: 16.sp,
                                )
                              : Icon(
                                  Icons.home_outlined,
                                  color: const Color.fromRGBO(120, 120, 120, 1),
                                  size: 16.sp,
                                ),
                          Text("Home",
                              style: GoogleFonts.poppins(
                                  color: pageIndex == 0
                                      ? Colors.white
                                      : const Color.fromRGBO(120, 120, 120, 1),
                                  fontSize: 7.5.sp))
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
                    height: 7.8.h,
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
                                  size: 16.sp,
                                )
                              : Icon(
                                  Icons.local_offer_outlined,
                                  color: const Color.fromRGBO(120, 120, 120, 1),
                                  size: 16.sp,
                                ),
                          Text("Offers",
                              style: GoogleFonts.poppins(
                                  color: pageIndex == 1
                                      ? Colors.white
                                      : const Color.fromRGBO(120, 120, 120, 1),
                                  fontSize: 7.5.sp))
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
                    height: 7.8.h,
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
                                  size: 16.sp,
                                )
                              : Icon(
                                  Icons.shopping_bag_outlined,
                                  color: const Color.fromRGBO(120, 120, 120, 1),
                                  size: 16.sp,
                                ),
                          Text("Orders",
                              style: GoogleFonts.poppins(
                                  color: pageIndex == 2
                                      ? Colors.white
                                      : const Color.fromRGBO(120, 120, 120, 1),
                                  fontSize: 7.5.sp))
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
                    height: 7.8.h,
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
                                  size: 16.sp,
                                )
                              : Icon(
                                  Icons.person_outline,
                                  color: const Color.fromRGBO(120, 120, 120, 1),
                                  size: 16.sp,
                                ),
                          Text("Account",
                              style: GoogleFonts.poppins(
                                  color: pageIndex == 3
                                      ? Colors.white
                                      : const Color.fromRGBO(120, 120, 120, 1),
                                  fontSize: 7.5.sp))
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
