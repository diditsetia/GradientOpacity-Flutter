import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage(
                  "https://img.okeinfo.net/content/2019/05/20/33/2058175/bahagianya-pevita-pearce-gendong-anak-keenan-pearce-Xe2FgvCQ8y.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
