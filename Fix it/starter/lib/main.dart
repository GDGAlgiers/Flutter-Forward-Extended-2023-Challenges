import 'package:bookmark/presentation/ui/bookmark_screen.dart';
import 'package:common/utils/error/failure_response.dart';
import 'package:common/utils/helper/preference_settings_helper.dart';
import 'package:common/utils/navigation/navigation.dart';
import 'package:common/utils/provider/preference_settings_provider.dart';
import 'package:common/utils/route_observer/route_observer.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:dependencies/provider/provider.dart';
import 'package:detail_surah/presentation/ui/detail_surah_screen.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/ui/home_screen.dart';
import 'package:resources/constant/named_routes.dart';
import 'package:splash/presentation/ui/onboard_screen.dart';
import 'package:splash/presentation/ui/splash_screen.dart';

import 'di/injections.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injections().init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    change();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PreferenceSettingsProvider(
            preferenceSettingsHelper: PreferenceSettingsHelper(
              sharedPreferences: SharedPreferences.getInstance(),
            ),
          ),
        ),
      ],
      child: Consumer<PreferenceSettingsProvider>(
        builder: (context, prefSetProvider, _) {
          return MaterialApp(
            title: 'Quran App',
            theme: prefSetProvider.themeData,
            navigatorKey: navigatorKey as GlobalKey<NavigatorState>,
            navigatorObservers: [routeObserver],
            debugShowCheckedModeBanner: false,
            initialRoute: NamedRoutes.splashScreen,
            routes: {
              NamedRoutes.splashScreen: (_) => SplashScreen(),
              NamedRoutes.onBoardScreen: (_) => const OnBoardScreen(),
              'NamedRoutes.homeScreen': (_) => const HomeScreen(),
              NamedRoutes.detailScreen: (context) => DetailSurahScreen(
                  id: BlocProvider.of(context).state as int),
              NamedRoutes.bookmarkScreen: (context) => const BookmarkScreen(),
            },
          );
        },
      ),
    );
  }

  void change() {
    RegisterCoreModule().call(setState(() {}));
  }
}
