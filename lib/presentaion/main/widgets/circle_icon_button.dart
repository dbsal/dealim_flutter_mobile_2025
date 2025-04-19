import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap; //=Function()
  const CircleIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF081854),
        ),
        child: Icon(icon, color: Colors.white, size: 35),
      ),
    );
  }
}
// 동그라미 만드는 방법:1.shape:BoxShape.circle, 2.borderRadius: BorderRadius.circular(50)
// 버튼 눌렀을때:InkWell(리플효과:물결 표시 버튼 눌럿을때),GestureDetector