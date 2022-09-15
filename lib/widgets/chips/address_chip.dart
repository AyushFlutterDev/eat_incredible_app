import 'package:eat_incredible_app/utils/barrel.dart';

class AddressChips extends StatefulWidget {
  final ValueChanged<String>? onSelected;
  const AddressChips({super.key, required this.onSelected});

  @override
  State<AddressChips> createState() => _AddressChipsState();
}

class _AddressChipsState extends State<AddressChips> {
  String selectedAddress = 'Home';
  final List<String> addressList = <String>[
    'Home',
    'Work',
    'Friends',
    'Other',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAddress = addressList[0];
                });
                widget.onSelected!(addressList[0]);
              },
              child: Container(
                  width: 85.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: selectedAddress == addressList[0]
                        ? const Color.fromRGBO(226, 10, 19, 1)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffDD8C8F),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      selectedAddress == addressList[0]
                          ? const Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )
                          : const Icon(
                              Icons.home,
                              color: Color.fromRGBO(226, 10, 19, 1),
                            ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        addressList[0],
                        style: TextStyle(
                          color: selectedAddress == addressList[0]
                              ? Colors.white
                              : const Color(0xff000000),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAddress = addressList[1];
                });
                widget.onSelected!(addressList[1]);
              },
              child: Container(
                  width: 85.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: selectedAddress == addressList[1]
                        ? const Color.fromRGBO(226, 10, 19, 1)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffDD8C8F),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      selectedAddress == addressList[1]
                          ? const Icon(
                              Icons.location_city,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )
                          : const Icon(
                              Icons.location_city,
                              color: Color.fromRGBO(226, 10, 19, 1),
                            ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        addressList[1],
                        style: TextStyle(
                          color: selectedAddress == addressList[1]
                              ? Colors.white
                              : const Color(0xff000000),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedAddress = addressList[2];
                });
                widget.onSelected!(addressList[2]);
              },
              child: Container(
                  width: 85.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: selectedAddress == addressList[2]
                        ? const Color.fromRGBO(226, 10, 19, 1)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffDD8C8F),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      selectedAddress == addressList[2]
                          ? const Icon(
                              Icons.people,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )
                          : const Icon(
                              Icons.people,
                              color: Color.fromRGBO(226, 10, 19, 1),
                            ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        addressList[2],
                        style: TextStyle(
                          color: selectedAddress == addressList[2]
                              ? Colors.white
                              : const Color(0xff000000),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedAddress = addressList[3];
            });
            widget.onSelected!(addressList[3]);
          },
          child: Container(
              width: 85.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: selectedAddress == addressList[3]
                    ? const Color.fromRGBO(226, 10, 19, 1)
                    : const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xffDD8C8F),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 4.w,
                  ),
                  selectedAddress == addressList[3]
                      ? const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )
                      : const Icon(
                          Icons.location_on,
                          color: Color.fromRGBO(226, 10, 19, 1),
                        ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    addressList[3],
                    style: TextStyle(
                      color: selectedAddress == addressList[3]
                          ? Colors.white
                          : const Color(0xff000000),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
