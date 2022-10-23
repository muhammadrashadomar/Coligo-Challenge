import 'package:coligo_test/controllers/dashborad_ctrl.dart';
import 'package:provider/provider.dart';

class MyProviders {
  static final list = [
    ChangeNotifierProvider<DashboardController>(
      create: (_) => DashboardController(),
    ),
  ];
}
