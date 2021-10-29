import 'package:df02/src/blocs/avartars.dart';
import 'package:df02/src/widgets/avartar_widget.dart';
import 'package:flutter/material.dart';

class AvartarsList extends StatelessWidget {
  const AvartarsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 80,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int i) {
                return Container(
                  padding: const EdgeInsets.only(right: 8),
                  child: AvatarWidget(
                    isActive: avartars[i].isActive,
                    name: avartars[i].name,
                    numberOfMessages: avartars[i].numberOfMessages,
                    avartar: avartars[i].avartar,
                    showName: avartars[i].showName,
                  ),
                );
              },
              childCount: avartars.length,
            ),
          )
        ],
      ),
    );
  }
}
