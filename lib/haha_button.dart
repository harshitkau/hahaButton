import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HahaButton extends StatefulWidget {
  const HahaButton({Key? key}) : super(key: key);

  @override
  State<HahaButton> createState() => _HahaButtonState();
}

class _HahaButtonState extends State<HahaButton> {
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    bool haha = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("HahaButton"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (isAnimated == false)
                isAnimated = true;
              else
                isAnimated = false;
            });
            print(isAnimated);
          },
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: isAnimated
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(image: AssetImage("image/haha.gif")),
                  )
                : Image(image: AssetImage("image/haha.png")),
          ),
        ),
      ),
    );
  }
}
