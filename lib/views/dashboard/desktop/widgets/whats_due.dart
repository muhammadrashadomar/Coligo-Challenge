import 'package:coligo_test/views/shared_widgets/outlined_btn.dart';
import 'package:coligo_test/views/shared_widgets/r_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/dashborad_ctrl.dart';
import '../../../../resources/colors.dart';
import '../../../../resources/constants.dart';
import '../../../shared_widgets/reusable_text.dart';

class WhatsDue extends StatelessWidget {
  const WhatsDue({this.width, super.key});
  final double? width;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardController>(context);
    final tasks = provider.tasks;

    return RCard(
      width: width,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: tasks.length + 1,
        shrinkWrap: true,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, i) {
          // Title, Subtitle
          if (i == 0) {
            return SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RText(
                        txt: Constants.whatsDueTitle,
                        size: 25,
                        color: RColors.title,
                        weight: FontWeight.w600,
                      ),
                      GestureDetector(
                        child: const RText(
                          txt: 'All',
                          size: 18,
                          color: RColors.buttons,
                          weight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    // width: width - 40,
                    child: RText(
                      txt: Constants.whatsDueSubtitle,
                      size: 12,
                      color: RColors.subtitle,
                      weight: FontWeight.w400,
                      maxLines: 4,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            );
          }
          final task = tasks[i - 1];
          // Others
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.hourglass_top,
                    color: RColors.buttons,
                    size: 35,
                  ),
                  const SizedBox(width: 10),
                  RText(
                    txt: task.title,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RText(
                        txt: 'Course:',
                        size: 16,
                        color: RColors.subtitle,
                      ),
                      const SizedBox(height: 10),
                      RText(
                        txt: 'Topic:',
                        size: 16,
                        color: RColors.subtitle,
                      ),
                      const SizedBox(height: 10),
                      RText(
                        txt: 'Due to:',
                        size: 16,
                        color: RColors.subtitle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  //Todo: fill with dynamic code
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RText(
                        txt: task.course,
                        size: 14,
                        color: RColors.subtitle,
                      ),
                      const SizedBox(height: 10),
                      RText(
                        txt: task.topic,
                        size: 14,
                        color: RColors.subtitle,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 10),
                      RText(
                        txt: task.dueTo,
                        size: 14,
                        color: RColors.subtitle,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: ROutlinedButton(
                  title: 'Start Quiz',
                  height: 45,
                  width: 300,
                  onPressed: () {
                    //fill with functionality
                  },
                ),
              ),
            ],
          );
        },
        separatorBuilder: (_, i) {
          return i != 0
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    color: RColors.background,
                    thickness: 3,
                    indent: 0,
                    endIndent: 0,
                  ),
                )
              : const SizedBox(height: 40);
        },
      ),
    );
  }
}
