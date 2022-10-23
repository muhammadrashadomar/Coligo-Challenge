import 'package:coligo_test/views/dashboard/dashboard.dart';
import 'package:coligo_test/views/homepage/home.dart';

class MyRoutes {
  static const String homeScreen = "/";
  static const String dashboardScreen = "/dashboard";

  static const initialRoute = homeScreen;

  static final routes = {
    homeScreen: (_) => const Home(),
    dashboardScreen: (_) => const DashboardScreen(),
  };
}
