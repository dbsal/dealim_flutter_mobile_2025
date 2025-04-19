// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:dealim_flutter_mobile_2025/presentaion/common/widgets/white_box.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const HeightBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          // 타이틀
          Text('Height(CM)', style: TextStyle(fontSize: 18)),
          // 숫자
          Text(
            '$_height',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),

          // slider
          Slider(
            year2023: false,
            value: _height,
            min: 50.0,
            max: 300.0,
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
