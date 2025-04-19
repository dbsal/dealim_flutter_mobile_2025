import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:dealim_flutter_mobile_2025/presentaion/common/widgets/white_box.dart';
import 'package:dealim_flutter_mobile_2025/presentaion/main/widgets/circle_icon_button.dart';

class InDeContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const InDeContainer({
    super.key,
    required this.title,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: //타이틀
            [
          Text(title, style: TextStyle(fontSize: 18)),
          //숫자
          Text(
            '$value',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          //Minus-Plus버튼튼
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleIconButton(onTap: onMinus, icon: LucideIcons.minus),
              CircleIconButton(onTap: onPlus, icon: LucideIcons.plus),
            ],
          ),
        ],
      ), //padding엔 EdgeInsets.가 필요함함
    );
  }
}
