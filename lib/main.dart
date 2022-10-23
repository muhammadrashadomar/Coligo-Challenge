import 'package:coligo_test/localizations/change_local.dart';
import 'package:coligo_test/resources/providers.dart';
import 'package:coligo_test/resources/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  runApp(const Coligo());
}

class Coligo extends StatelessWidget {
  const Coligo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MyProviders.list,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //
        localizationsDelegates: const [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English
          Locale('ar', ''), // Arabic
        ],
        localeResolutionCallback: (currentLang, supportedLang) {
          if (currentLang != null) {
            for (Locale local in supportedLang) {
              if (local.languageCode == currentLang.languageCode) {
                return currentLang;
              }
            }
          } else {
            return supportedLang.first;
          }
          return null;
        },
        routes: MyRoutes.routes,
        initialRoute: MyRoutes.initialRoute,
      ),
    );
  }
}
