import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6A40B9), // Màu tím nền
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Column(
              children: [
                SvgPicture.asset('assets/logo/logo.svg' ,
                width: 200,
                height: 200,),
                
                SizedBox(height: 16),
                Text(
                  'JinStore',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Any shopping just from home',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            'Version 0.0.1',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white54,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}