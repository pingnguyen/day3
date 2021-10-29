import 'package:flutter/material.dart';

class NiceButton extends StatefulWidget {
  final String caption;
  final VoidCallback onPress;
  final Color? color;
  final Color? captionColor;
  final Color? hoverColor;
  const NiceButton(
      {Key? key,
      required this.caption,
      required this.onPress,
      this.color,
      this.captionColor,
      this.hoverColor})
      : super(key: key);

  @override
  State<NiceButton> createState() => _NiceButtonState();
}

class _NiceButtonState extends State<NiceButton> {
  bool isBusy = false;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.4,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: widget.color),
          child: MaterialButton(
            hoverColor: widget.hoverColor,
            onPressed: () async {
              setState(() {
                isBusy = true;
              });

              //Do some thing take long time
              await Future.delayed(const Duration(seconds: 1));
              //
              widget.onPress();
              setState(() {
                isBusy = false;
              });
            },
            child: Text(
              widget.caption,
              style: TextStyle(
                  color: widget.captionColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      if (isBusy) const CircularProgressIndicator(),
    ]);
  }
}
