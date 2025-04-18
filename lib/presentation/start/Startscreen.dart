import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  final _title = 'Get Started with\nTracking Your Health!';

  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';

  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3F9), fontSize: 15);

  //깃 수정용
  //숏컷 커맨드 + .
  //Colors.blueAccent,
  //앱 이름
  Widget _buildappname() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  //시작버튼
  Widget _buildbutton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed:
            () =>
            //메인 이동
            context.go(AppRoute.main.topath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text("Get Started"),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30), //padding 여백
            width: 280,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildappname(),
                SizedBox(height: 60),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                _buildTitleDesc(),
                // _buildTitle(),
                // SizedBox(height: 15),
                // _buildDescription(),
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

  //Column으로 감싸고 crossAxisAlignment: CrossAxisAlignment.start, 로 정렬 (기존 방법)

