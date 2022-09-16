import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class CartProduct extends StatefulWidget {
  final String imageUrl;
  final String title;
  final int disprice;
  final int price;
  final int quantity;
  final int iteam;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? ontap;

  const CartProduct(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.disprice,
      required this.price,
      required this.quantity,
      required this.iteam,
      required this.onChanged,
      required this.ontap});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  late int addToCard;

  @override
  void initState() {
    addToCard = widget.iteam;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CustomPic(
                    imageUrl:
                        "https://img.freepik.com/free-photo/red-onion-whole-isolated-white_146671-19175.jpg?size=626&ext=jpg&ga=GA1.2.1083069314.1662365651",
                    height: 53.h,
                    width: 57.w),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Schezwan Noodles",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(44, 44, 44, 1),
                      )),
                  SizedBox(height: 0.5.h),
                  Text("500 g",
                      style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(148, 148, 148, 1),
                      )),
                  SizedBox(height: 0.5.h),
                  Row(
                    children: [
                      Text("₹ 100",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(44, 44, 44, 1),
                          )),
                      SizedBox(width: 2.5.w),
                      Text("₹ 100",
                          style: GoogleFonts.poppins(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(148, 148, 148, 1),
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                ],
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
                      border:
                          Border.all(color: const Color.fromRGBO(2, 160, 8, 1)),
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
    );
  }
}
