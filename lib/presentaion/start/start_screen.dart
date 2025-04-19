import 'package:dealim_flutter_mobile_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with\nTrackin your Health!';
  final _desc =
      'calaulate your BMI and stay on top of your wellness journeay,effortlessly.';

  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(fontSize: 15, color: Color(0xFFC6C3F9));

  // 타이틀 위젯
  Widget _buildAppName() {
    return Text(
      "BMI Calculator",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  // 타이틀과 설명을 묶은 위젯
  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  // 시작 버튼
  Widget _buildbutton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath), // 메인 화면 으로 이동동
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text('Get Started'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            // padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //상하 중간간
              children: [
                _buildAppName(),
                // SizedBox(height: 15),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //_buildTitle(),
                    SizedBox(height: 15),
                    // _buildDescription(),
                  ],
                ),

                _buildTitleDesc(),
                SizedBox(height: 40),
                _buildbutton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
