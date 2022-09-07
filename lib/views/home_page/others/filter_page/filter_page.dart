import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/addtocart/addtocart_bar.dart';
import 'package:eat_incredible_app/widgets/filter/filter_bar.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

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
                  child: Container(
                    width: 70.w,
                    color: const Color.fromARGB(255, 210, 21, 21),
                    child: Column(
                      children: const [],
                    ),
                  ),
                ),
              ],
            ),
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
