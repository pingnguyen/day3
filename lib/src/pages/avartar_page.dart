import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/widgets/avartar_widget.dart';
import 'package:flutter/material.dart';

class AvartarPage extends StatelessWidget {
  const AvartarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        title: const Text('Avartar widget uses status'),
      ),
      backgroundColor: AppColors.appColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
              child: AvatarWidget(
                  name: '',
                  isActive: false,
                  numberOfMessages: '',
                  avartar: "https://randomuser.me/api/portraits/med/men/24.jpg",
                  showName: false)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              child: AvatarWidget(
                  name: '',
                  isActive: true,
                  numberOfMessages: '',
                  avartar:
                      'https://randomuser.me/api/portraits/med/women/13.jpg',
                  showName: false)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              child: AvatarWidget(
                  name: 'Morgan Chease',
                  isActive: false,
                  numberOfMessages: '',
                  avartar: 'https://randomuser.me/api/portraits/med/men/75.jpg',
                  showName: true)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              child: AvatarWidget(
                  name: 'Ping',
                  isActive: false,
                  numberOfMessages: '99',
                  avartar: 'https://randomuser.me/api/portraits/med/men/54.jpg',
                  showName: true)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              child: AvatarWidget(
                  name: 'Hellen loose',
                  isActive: true,
                  numberOfMessages: '69',
                  avartar: 'https://randomuser.me/api/portraits/med/men/75.jpg',
                  showName: true)),
        ],
      )),
    );
  }
}
