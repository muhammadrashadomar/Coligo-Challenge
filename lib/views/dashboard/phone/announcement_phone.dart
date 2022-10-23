import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../resources/colors.dart';
import '../../../controllers/dashborad_ctrl.dart';
import '../../shared_widgets/reusable_text.dart';

class AnnouncementSmallScreen extends StatelessWidget {
  const AnnouncementSmallScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardController>(context);
    final announcements = provider.announcements;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      shrinkWrap: true,
      itemCount: announcements.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(announcements[i].photo),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RText(
                      txt: announcements[i].sender,
                      size: 16,
                      color: RColors.title,
                      weight: FontWeight.w600,
                    ),
                    const SizedBox(height: 10),
                    RText(
                      txt: announcements[i].department,
                      size: 16,
                      color: RColors.subtitle,
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            RText(
              txt: announcements[i].body,
              size: 16,
              color: RColors.subtitle,
              maxLines: 10,
              weight: FontWeight.w600,
              height: 1.4,
            ),
          ],
        );
      },
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Divider(
          thickness: 2,
          color: RColors.background,
        ),
      ),
    );
  }
}
