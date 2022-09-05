import 'package:cached_network_image/cached_network_image.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/home_page/navigation/navigation.dart';

void main() {
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eat incredible App',
        home: Navigation(),
      );
    });
  }
}
