import 'package:df02/src/blocs/data_provider.dart';
import 'package:df02/src/pages/avartar_list_page.dart';
import 'package:df02/src/pages/avartar_page.dart';
import 'package:df02/src/pages/full_widgets.dart';
import 'package:df02/src/pages/item_page.dart';
import 'package:df02/src/pages/status_page.dart';
import 'package:df02/src/values/app_colors.dart';
import 'package:df02/src/widgets/nice_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    readChats(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter at 200Lab'),
            backgroundColor: AppColors.appColor,
          ),
          backgroundColor: AppColors.appColor,
          body: ListView(
            children: [
              NiceButton(
                  color: Colors.cyan,
                  captionColor: Colors.yellow,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StatusPage()));
                  },
                  caption: 'Status indicator widget'),
              const SizedBox(
                height: 5,
              ),
              NiceButton(
                  color: Colors.deepOrangeAccent,
                  captionColor: Colors.white,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AvartarPage()));
                  },
                  caption: 'Avartar widget used status'),
              const SizedBox(
                height: 5,
              ),
              NiceButton(
                  color: Colors.indigoAccent,
                  captionColor: Colors.white,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AvartarListPage()));
                  },
                  caption: 'A vartar list widget'),
              const SizedBox(
                height: 5,
              ),
              NiceButton(
                  color: Colors.blue,
                  captionColor: Colors.white,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemPage()));
                  },
                  caption: 'Item widget used avatar'),
              const SizedBox(
                height: 5,
              ),
              NiceButton(
                  color: Colors.amberAccent,
                  caption: 'Full widgets',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FullPage()));
                  }),
              const SizedBox(height: 5),
              NiceButton(
                  caption: 'Custom Button',
                  color: Colors.amber,
                  captionColor: Colors.white,
                  hoverColor: Colors.blue,
                  onPress: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Hello from custom button!')));
                  })
            ],
          )),
    );
  }
}
