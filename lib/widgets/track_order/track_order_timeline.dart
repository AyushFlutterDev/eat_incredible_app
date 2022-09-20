import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderTimeline extends StatelessWidget {
  final int index;
  const OrderTimeline({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
            child: TimelineTile(
              lineXY: 0.1,
              isFirst: true,
              indicatorStyle: const IndicatorStyle(
                width: 13,
                color: Color(0xFF27AA69),
                padding: EdgeInsets.all(6),
              ),
              endChild: Text("Order Confirmed",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              beforeLineStyle: const LineStyle(
                color: Color(0xFF27AA69),
                thickness: 2.5,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            child: TimelineTile(
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                width: 13,
                color: index > 0
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                padding: const EdgeInsets.all(6),
              ),
              endChild: Text("Shipped",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              beforeLineStyle: LineStyle(
                color: index > 0
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                thickness: 2.5,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            child: TimelineTile(
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                width: 13,
                color: index > 1
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                padding: const EdgeInsets.all(6),
              ),
              endChild: Text("Out For Delivery",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              beforeLineStyle: LineStyle(
                color: index > 1
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                thickness: 2.5,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            child: TimelineTile(
              isLast: true,
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                width: 13,
                color: index > 2
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                padding: const EdgeInsets.all(6),
              ),
              endChild: Text("Delivered",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              beforeLineStyle: LineStyle(
                color: index > 2
                    ? const Color(0xFF02A008)
                    : const Color(0xFFD9D9D9),
                thickness: 2.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
