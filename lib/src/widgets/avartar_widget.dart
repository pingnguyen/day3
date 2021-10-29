import 'package:df02/src/values/app_styles.dart';
import 'package:df02/src/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget(
      {Key? key,
      required this.name,
      required this.isActive,
      required this.numberOfMessages,
      required this.avartar,
      required this.showName})
      : super(key: key);

  final bool isActive;
  final String numberOfMessages;
  final String name;
  final String avartar;
  final bool showName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: const Alignment(1, 1),
          children: [
            CircleAvatar(
              backgroundImage: Image.network(avartar).image,
              radius: 25,
            ),
            SizedBox(
              child: StatusWidget(
                  isActive: isActive, numberOfMessages: numberOfMessages),
            )
          ],
        ),
        (showName)
            ? Text(
                name,
                style: AppStyles.avartarName,
              )
            : const SizedBox()
      ],
    );
  }
}
