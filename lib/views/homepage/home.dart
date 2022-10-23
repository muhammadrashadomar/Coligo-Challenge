import 'package:coligo_test/resources/routes.dart';
import 'package:coligo_test/views/shared_widgets/filled_btn.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RFilledButton(
              title: 'Login',
              width: 250,
              height: 50,
              onPressed: () {
                // To User Dashboard Screen
                Navigator.of(context)
                    .pushReplacementNamed(MyRoutes.dashboardScreen);
              },
            ),
          )
        ],
      ),
    );
  }
}
