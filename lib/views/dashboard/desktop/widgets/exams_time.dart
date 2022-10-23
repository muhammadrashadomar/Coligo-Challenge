import 'package:coligo_test/resources/colors.dart';
import 'package:coligo_test/resources/constants.dart';
import 'package:coligo_test/resources/images.dart';
import 'package:coligo_test/views/shared_widgets/filled_btn.dart';
import 'package:coligo_test/views/shared_widgets/r_card.dart';
import 'package:coligo_test/views/shared_widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class ExamsTimeCard extends StatelessWidget {
  const ExamsTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RCard(
      child: LayoutBuilder(builder: (context, constr) {
        final imageWidth = constr.maxWidth * 0.4;
        //
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: constr.maxWidth - imageWidth,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const RText(
                      txt: Constants.examsTimeTitle,
                      size: 30,
                      color: RColors.heading,
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(height: 5),
                    // SubTitle
                    RText(
                      txt: Constants.examsSubtitle,
                      color: RColors.title,
                      size: 14,
                      maxLines: 3,
                      height: 1.5,
                    ),
                    const SizedBox(height: 30),
                    // Quote
                    RText(
                      txt: Constants.examsquote,
                      color: RColors.subtitle,
                      size: 14,
                      style: FontStyle.italic,
                    ),
                    const SizedBox(height: 30),
                    RFilledButton(
                      onPressed: () {
                        // Functionality code
                      },
                      title: 'View exams tips',
                      width: 200,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              RImages.examsCard,
              width: imageWidth,
              fit: BoxFit.fitWidth,
            ),
          ],
        );
      }),
    );
  }
}
