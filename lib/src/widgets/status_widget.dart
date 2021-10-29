import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/values/app_styles.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget(
      {Key? key, required this.isActive, required this.numberOfMessages})
      : super(key: key);

  final bool isActive;
  final String numberOfMessages;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
      ),
      Container(
        width: 18,
        height: 18,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isActive ? AppColors.activeColor : AppColors.inactiveColor,
            borderRadius: BorderRadius.circular(50)),
        child: Text(numberOfMessages, style: AppStyles.avartarText),
      ),
    ]);
  }
}
