import 'dart:developer';

import 'package:eat_incredible_app/utils/barrel.dart';

class LocationSearchPage extends StatelessWidget {
  const LocationSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 4.9.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.sp),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 235, 234, 234),
                      hintText: ' Search',
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.my_location,
                  color: Color.fromRGBO(226, 10, 19, 1),
                ),
                title: Text('Current Location'),
                subtitle: Text('Using GPS'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.w, top: 10.h),
                child: Row(
                  children: [
                    Text("Saved Locations",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      log("Tapped");
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        size: 20.sp,
                        color: const Color.fromRGBO(226, 10, 19, 1),
                      ),
                      title: const Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: const Text(
                        '10, Bharat Commercial Centre, Sect 18, Turbhe, Navi Mumbai',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
