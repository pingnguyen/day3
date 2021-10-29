import 'package:df02/src/values/app_styles.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.titleText}) : super(key: key);
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: SizedBox(
        child: Text(
          titleText,
          style: AppStyles.appTitle,
        ),
      ),
    );
  }
}
