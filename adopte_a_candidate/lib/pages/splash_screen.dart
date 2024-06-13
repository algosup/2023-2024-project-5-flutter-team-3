// splash_screen.dart
import 'package:adopte_a_candidate/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:adopte_a_candidate/l10n/app_localizations.dart';
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
    return Scaffold(
      appBar: const Logo(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFD5C2)),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.loading,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
