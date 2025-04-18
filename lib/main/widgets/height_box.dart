// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:daelim_2025/presentation/common/widgets/white_box.dart';

class heightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const heightBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<heightBox> createState() => _heightBoxState();
}

class _heightBoxState extends State<heightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Text('Height (CM)', style: TextStyle(fontSize: 18)),
          //숫자
          Text(
            '${_height.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6C63FF),
            ),
          ),
          //slider
          Slider(
            year2023: false,
            value: _height,
            min: 50.0,
            max: 300.0,

            activeColor: Color(0xFF6C63FF),
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
              widget.onChanged(_height);
            },
          ),
        ],
      ),
    );
  }
}
