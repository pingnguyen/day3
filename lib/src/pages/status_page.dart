import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: const Text('Status indicator widget'),
      ),
      backgroundColor: AppColors.appColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 20,
            width: 20,
            child: StatusWidget(isActive: false, numberOfMessages: ''),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: StatusWidget(isActive: false, numberOfMessages: '69'),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: StatusWidget(isActive: true, numberOfMessages: ''),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: StatusWidget(isActive: true, numberOfMessages: '99'),
          ),
        ],
      )),
    );
  }
}
