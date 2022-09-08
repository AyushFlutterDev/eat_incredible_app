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
          border: Border.all(color: Colors.grey.shade300),
        ),
        width: 42.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPic(
                    imageUrl:
                        "https://img.freepik.com/free-photo/aloo-paratha-gobi-paratha-also-known-as-potato-cauliflower-stuffed-flatbread-dish-originating-from-indian-subcontinent_466689-76173.jpg?size=626&ext=jpg&ga=GA1.2.1083069314.1662365651",
                    height: 13.h,
                    width: 43.w),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.1.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aloo Paratha",
                        style: GoogleFonts.poppins(
                            fontSize: 9.8.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 0.6.h,
                      ),
                      Text(
                        "500 gm",
                        style: GoogleFonts.poppins(
                            fontSize: 8.5.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(148, 148, 148, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.sp, bottom: 8.sp, right: 8.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 200',
                          style: GoogleFonts.poppins(
                              fontSize: 7.sp,
                              decoration: TextDecoration.lineThrough,
                              color: const Color.fromRGBO(148, 148, 148, 1))),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0.1.h),
                        child: Text(
                          "₹ 100",
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp, fontWeight: FontWeight.w500),
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
                            height: 3.5.h,
                            width: 19.w,
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
                          width: 19.w,
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
                                      widget.onChanged!(addToCard.toString());
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
          ],
        ),
      ),
    );
  }
}
