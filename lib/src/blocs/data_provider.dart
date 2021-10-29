import 'dart:convert';
import 'package:df02/models/index.dart';
import 'package:df02/src/blocs/avartars.dart';
import 'package:df02/src/blocs/items.dart';
import 'package:df02/src/widgets/avartar_widget.dart';
import 'package:df02/src/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void readChats(context) async {
  String data =
      await DefaultAssetBundle.of(context).loadString("assets/data/chats.json");
  Items item = Items.fromJson(jsonDecode(data));

  for (var element in item.results) {
    avartars.add(AvatarWidget(
        name: element.user.name ?? '',
        isActive: ((element.user.status ?? '') == "online"),
        numberOfMessages: (element.unread_count ?? 0).toString(),
        avartar: element.user.picture.medium ?? '',
        showName: true));

    items.add(ItemWidget(
        name: element.user.name ?? '',
        isActive: ((element.user.status ?? '') == "online"),
        numberOfMessages: (element.unread_count ?? 0).toString(),
        avartar: element.user.picture.medium ?? '',
        time: DateFormat.jm().format(
            DateTime.parse(element.created_at ?? DateTime.now().toString())),
        textMessage: element.text ?? '',
        showName: false));
  }
}
