import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/values/app_styles.dart';
import 'package:df02/src/widgets/avartar_widget.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {Key? key,
      required this.name,
      required this.isActive,
      required this.numberOfMessages,
      required this.avartar,
      required this.time,
      required this.textMessage,
      required this.showName})
      : super(key: key);

  final bool isActive;
  final String numberOfMessages;
  final String name;
  final String avartar;
  final String time;
  final String textMessage;
  final bool showName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      color: AppColors.appColor,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AvatarWidget(
                      name: name,
                      isActive: isActive,
                      numberOfMessages: numberOfMessages,
                      avartar: avartar,
                      showName: showName),
                ],
              )),
          Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Text(
                              name,
                              style: AppStyles.itemTitle,
                            )),
                        const Spacer(),
                        Expanded(
                            flex: 1,
                            child: Text(time, style: AppStyles.itemClock))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(textMessage,
                                softWrap: true, style: AppStyles.itemText))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
