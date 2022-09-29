import 'package:cached_network_image/cached_network_image.dart';
import 'package:eat_incredible_app/controller/iteam_bloc/itemsdemo_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:eat_incredible_app/views/splash_screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<ItemsdemoBloc>(create: (context) => ItemsdemoBloc()),
            ],
            child: GetMaterialApp(
              theme: ThemeData(useMaterial3: true),
              debugShowCheckedModeBanner: false,
              title: 'Eat incredible App',
              home: const SplashScreen(),
            ),
          );
        });
  }
}
