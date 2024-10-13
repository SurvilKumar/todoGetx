import 'package:flutter/material.dart';
import 'package:todo/core/utils/colors_const.dart';

class CircularAvatarWithArc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Custom painted arc
        // CustomPaint(
        //   size: Size(50, 50), // Size of the area for the arc
        //   painter: ArcPainter(),
        // ),
        // Padding around CircleAvatar
        Container(
          padding: EdgeInsets.all(5), // Padding around the avatar
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstant.whiteColor.withOpacity(0.1), // Background color for the padding
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with your image
          ),
        ),
      ],
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue // Color of the arc
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6; // Width of the arc

    final path = Path();

    // Create an arc
    path.arcTo(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
      0, // Start angle
      -3.14, // Sweep angle (180 degrees)
      false,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}