import 'package:dealim_flutter_mobile_2025/presentaion/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderBox extends StatefulWidget {
  final Function(Gender gender) onChanged;
  const GenderBox({super.key, required this.onChanged});

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  Gender _gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Text('Gender', style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text('Male', style: TextStyle(fontSize: 18)),
              Switch.adaptive(
                value: _gender == Gender.female,
                onChanged: (value) {
                  widget.onChanged(_gender);
                  // UI 변경하기

                  setState(() {
                    // 기본방법
                    // if (value) {
                    //   _gender = Gender.female;
                    // } else {
                    //   _gender = Gender.male;
                    // }
                    _gender = value ? Gender.female : Gender.male;
                  });
                  widget.onChanged(_gender);
                },
              ),
              Text('Female', style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
