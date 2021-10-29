import 'package:df02/src/blocs/items.dart';
import 'package:df02/src/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          500, //Chỗ này muốn sử dụng double.infinity mà bị lỗi chưa hiểu tại sao
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return ItemWidget(
              name: items[i].name,
              isActive: items[i].isActive,
              numberOfMessages: items[i].numberOfMessages,
              avartar: items[i].avartar,
              time: items[i].time,
              textMessage: items[i].textMessage,
              showName: items[i].showName,
            );
          }),
    );
  }
}
