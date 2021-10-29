import 'package:df02/src/blocs/avartars.dart';
import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/widgets/avartar_widget.dart';
import 'package:flutter/material.dart';

class AvartarListPage extends StatelessWidget {
  const AvartarListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: const Text('Avartar list widget'),
      ),
      backgroundColor: AppColors.appColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
          )
        ],
      )),
    );
  }
}
