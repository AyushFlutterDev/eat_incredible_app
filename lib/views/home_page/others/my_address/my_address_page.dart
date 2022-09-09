import 'dart:developer';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/add_address/add_address_page.dart';
import 'package:eat_incredible_app/widgets/address_card/address_card.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({super.key});

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
            'My Address',
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {
                Get.to(() => const AddAddressPage());
              },
              icon: const Icon(Icons.add, color: Color(0xffE20A13)),
              label: Text('Add new address',
                  style: TextStyle(
                    color: const Color(0xff000000),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(height: 1.h),
            ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 2.5.h),
                      child: AddressCard(
                        address:
                            'Ogunlana Drive, Surulere, Lagos State Nigeria 100001',
                        name: 'Home',
                        onDelete: () {
                          log('Delete');
                        },
                        onEdit: () {
                          log('Edit');
                        },
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
