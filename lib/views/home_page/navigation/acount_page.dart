import 'package:eat_incredible_app/repo/login_repo.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/others/account/about_page.dart';
import 'package:eat_incredible_app/views/home_page/others/account/account_info_page.dart';
import 'package:eat_incredible_app/views/home_page/others/account/faqs_page.dart';
import 'package:eat_incredible_app/views/home_page/others/my_address/my_address_page.dart';

class AcountPage extends StatelessWidget {
  const AcountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.5.w),
        child: ListView(
          children: [
            ListTile(
              title: Text('Account Info',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15.sp,
              ),
              onTap: () => Get.to(() => const AccountInfoPage()),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('Addresses',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () => Get.to(() => const MyAddressPage()),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('Payment methods',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () {},
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('About',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () => Get.to(() => const AboutPage()),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('FAQs',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () => Get.to(() => const FaqsPage()),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('chats',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () {},
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('Rate The App',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () {},
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('Share Application.',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () {},
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              title: Text('Log Out',
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                  )),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.sp),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: const Text('Log Out'),
                    content: const Text('Are you sure you want to log out?'),
                    actions: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () async {
                          // final SharedPreferences prefs =
                          //     await SharedPreferences.getInstance();
                          // final String? phone = prefs.getString('phone');
                          LoginRepo().logout("97838312");
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
