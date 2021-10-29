import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/widgets/avartars_list_widget.dart';
import 'package:df02/src/widgets/items_list_widget.dart';
import 'package:df02/src/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullPage extends StatefulWidget {
  const FullPage({Key? key}) : super(key: key);

  @override
  _FullPageState createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appColor,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        backgroundColor: AppColors.appColor,
        body: SizedBox(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TitleWidget(titleText: 'Messages'),
                AvartarsList(),
                ItemsList(),
                Spacer()
              ]),
        ),
      ),
    );
  }
}
