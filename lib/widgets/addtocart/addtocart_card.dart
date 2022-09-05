import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/banner/custom_banner.dart';

class AddtoCart extends StatefulWidget {
  final String imageUrl;
  final String title;
  final int disprice;
  final int price;
  final int quantity;

  const AddtoCart({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.disprice,
    required this.price,
    required this.quantity,
  });

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  int addToCard = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(color: Colors.grey.shade300),
      ),
      height: 26.h,
      width: 43.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        child: Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPic(
                  imageUrl:
                      "https://img.freepik.com/free-photo/aloo-paratha-gobi-paratha-also-known-as-potato-cauliflower-stuffed-flatbread-dish-originating-from-indian-subcontinent_466689-76173.jpg?size=626&ext=jpg&ga=GA1.2.1083069314.1662365651",
                  height: 13.h,
                  width: 43.w),
              Padding(
                padding: EdgeInsets.only(top: 1.h, bottom: 0.5.h),
                child: Text(
                  "Aloo Paratha",
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "500 gm",
                style: GoogleFonts.poppins(
                    fontSize: 8.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('₹ 200',
                          style: GoogleFonts.poppins(
                              fontSize: 9.sp,
                              decoration: TextDecoration.lineThrough)),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0.1.h),
                        child: Text(
                          "₹ 100",
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
                            });
                          }),
                          child: Container(
                            height: 3.4.h,
                            width: 19.w,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: Text(
                                "Add",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 3.4.h,
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
                                      }
                                    });
                                  }),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 11.sp,
                                  ),
                                ),
                                Text(
                                  addToCard.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      addToCard++;
                                    });
                                  }),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
