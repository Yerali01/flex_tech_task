import 'package:flex_travel_tech_task/core/services/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(394, 853));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'tech task',
      routerConfig: _appRouter.config(),
    );
  }
}
