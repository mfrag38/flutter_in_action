import 'package:flutter/material.dart';

class Sun extends AnimatedWidget {
  Sun({Key key, Animation<Color> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<Color> animation = listenable;
    var maxWidth = MediaQuery.of(context).size.width;
    var margin = (maxWidth * .3) / 2;

    return new AspectRatio(
      aspectRatio: 1.0,
      child: new Container(
        margin: EdgeInsets.symmetric(horizontal: margin),
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: animation.value,
        ),
      ),
    );
  }
}

class Clouds extends StatelessWidget {
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return CustomPaint(
      size: screenSize,
      painter: CloudPainter(),
    );
  }
}

class CloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint()..color = Colors.white;

    var cloudBaseRect = new Rect.fromPoints(
      Offset(120.0, 125.0),
      Offset(size.width - 90.0, 150.0),
    );
    var cloudBase = new RRect.fromRectAndRadius(
      cloudBaseRect,
      Radius.circular(5.0),
    );

    canvas.drawCircle(Offset(120.0, 100.0), 50.0, paint);
    canvas.drawCircle(Offset(size.width / 2, 70.0), 65.0, paint);
    canvas.drawCircle(Offset(size.width - 100.0, 70.0), 80.0, paint);
    canvas.drawRRect(cloudBase, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
