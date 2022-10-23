import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/dashborad_ctrl.dart';
import '../../../../resources/colors.dart';
import '../../../shared_widgets/reusable_text.dart';

class AnnouncementBigScreen extends StatelessWidget {
  const AnnouncementBigScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardController>(context);
    final announcements = provider.announcements;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      shrinkWrap: true,
      itemCount: announcements.length,
      itemBuilder: (context, i) {
        return LayoutBuilder(builder: (context, constr) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(announcements[i].photo),
              ),
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
              const VerticalDivider(
                thickness: 2,
                color: RColors.background,
              ),
              SizedBox(
                width: constr.maxWidth - 260,
                child: RText(
                  txt: announcements[i].body,
                  size: 16,
                  color: RColors.subtitle,
                  maxLines: 10,
                  weight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
            ],
          );
        });
      },
      separatorBuilder: (_, __) => const SizedBox(height: 20),
    );
  }
}
