// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    context.go('/sign_up');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Logo(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text('Loading your dream job...'),
            ],
          ),
      ),
    );
  }
}
