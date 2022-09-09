import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/widgets/faq_card/faq_card.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Color.fromRGBO(0, 0, 0, 1)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(
          child: Text(
            'How can we help?',
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(97, 97, 97, 1),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: IconButton(
              icon: const Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 1)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 1.h, top: 2.h),
              child: Text("help with a recent order",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 4.h),
              child: Text("You don't have any orders.",
                  style: GoogleFonts.poppins(
                      fontSize: 10.sp, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
              child: Text("FAQs",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp, fontWeight: FontWeight.bold)),
            ),
            FaqCard(
              title: "Safe & responsible ordering",
              onTap: () {},
            ),
            FaqCard(
              title: "Safe & responsible ordering",
              onTap: () {},
            ),
            FaqCard(
              title: "Safe & responsible ordering",
              onTap: () {},
            ),
            FaqCard(
              title: "Safe & responsible ordering",
              onTap: () {},
            ),
            FaqCard(
              title: "Safe & responsible ordering",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
