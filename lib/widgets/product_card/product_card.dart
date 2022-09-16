import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final int disprice;
  final int price;
  final int quantity;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? ontap;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.disprice,
    required this.price,
    required this.quantity,
    required this.onChanged,
    required this.ontap,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int addToCard = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1.w),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 0.5.w,
          ),
        ),
        width: 130.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 95.h,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomPic(
                          imageUrl:
                              'https://media.istockphoto.com/photos/tomato-basil-leaf-and-garlic-picture-id171321115?k=20&m=171321115&s=612x612&w=0&h=LWGky4BiZuobbgqjnZQ4c1-MUJxvMCN7xZYUBQLagEc=',
                          height: 95.h,
                          width: double.infinity),
                      Positioned(
                        top: 3.h,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff02A008),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10.sp),
                              topRight: Radius.circular(10.sp),
                            ),
                          ),
                          height: 19.h,
                          width: 52.w,
                          child: Center(
                            child: Text(
                              "10% OFF",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aloo Paratha",
                        style: GoogleFonts.poppins(
                            fontSize: 10.8.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.6.h,
                      ),
                      Text(
                        "500 gm",
                        style: GoogleFonts.poppins(
                            fontSize: 9.5.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(148, 148, 148, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.sp, bottom: 5.sp, right: 4.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("₹ ${widget.disprice}",
                          style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              decoration: TextDecoration.lineThrough,
                              color: const Color.fromRGBO(148, 148, 148, 1))),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0.1.h),
                        child: Text(
                          "₹ ${widget.price}",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  addToCard == 0
                      ? GestureDetector(
                          onTap: (() {
                            setState(() {
                              addToCard = 1;
                              widget.onChanged!(addToCard.toString());
                            });
                          }),
                          child: Container(
                            height: 22.h,
                            width: 60.w,
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
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      if (addToCard > 0) {
                                        addToCard--;
                                        widget.onChanged!(addToCard.toString());
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
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      addToCard++;
                                      widget.onChanged!(addToCard.toString());
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
          ],
        ),
      ),
    );
  }
}
