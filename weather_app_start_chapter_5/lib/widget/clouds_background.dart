import 'package:flutter/material.dart';
import 'package:weather_app_start_chapter_5/styles.dart';

// TODO: WAIT UNTIL TO CHAPTER 6
class Clouds extends StatelessWidget {
  final bool isRaining;

  Clouds({this.isRaining = false});

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var cloudPaint = new Paint()..color = AppColor.cloudColorLight;
    var rainDropStrokeWidth = 3.0;
    var rainPaint = Paint()
      ..color = AppColor.cloudColorLight
      ..strokeWidth = rainDropStrokeWidth
      ..strokeCap = StrokeCap.round;

    return Container(
      height: 300.0,
      child: CustomPaint(
        size: screenSize,
        painter: CloudPainter(
          cloudPaint: cloudPaint,
          rainPaint: rainPaint,
          isRaining: isRaining,
        ),
        isComplex: true,
        willChange: true,
      ),
    );
  }
}

class CloudPainter extends CustomPainter {
  final Paint cloudPaint;
  final Paint rainPaint;
  final bool isRaining;

  CloudPainter({this.cloudPaint, this.rainPaint, this.isRaining});

  @override
  void paint(Canvas canvas, Size size) {
    // Rectangle Base height = 40.0
    var rectTop = 110.0;
    var rectBottom = rectTop + 40.0;

    var figureLeftEdge = size.width / 4;
    var figureRightEdge = size.width - 90.0;
    var figureCenter = size.width / 2;

    var cloudBaseRect = new Rect.fromPoints(
      Offset(figureLeftEdge, rectTop),
      Offset(figureRightEdge, rectBottom),
    );
    var cloudBase = new RRect.fromRectAndRadius(
      cloudBaseRect,
      Radius.circular(10.0),
    );

    canvas.drawCircle(Offset(figureLeftEdge + 5, 100.0), 50.0, cloudPaint);
    canvas.drawCircle(Offset(figureCenter, 70.0), 60.0, cloudPaint);
    canvas.drawCircle(Offset(figureRightEdge, 70.0), 80.0, cloudPaint);
    canvas.drawRRect(cloudBase, cloudPaint);

    if (isRaining) {
      var rainDropLength = 75.0;
      var rainDropOffsetXStart = figureLeftEdge;
      var rainDropOffsetXEnd = rainDropOffsetXStart * 0.8;
      var rainDropOffsetXNext = (figureRightEdge - figureLeftEdge) / 10;
      var rainDropOffsetYStart = rectBottom + 15.0;

      for (var i = 0; i < 10; i++) {
        rainDropOffsetXStart += rainDropOffsetXNext;
        rainDropOffsetXEnd += rainDropOffsetXNext;
        if (i.isEven) {
          rainDropOffsetYStart += 7.0;
        } else {
          rainDropOffsetYStart -= 7.0;
        }
        canvas.drawLine(
            new Offset(rainDropOffsetXStart, rainDropOffsetYStart),
            new Offset(
                rainDropOffsetXEnd, rainDropOffsetYStart + rainDropLength),
            rainPaint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
