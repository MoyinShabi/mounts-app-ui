import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Container(
      color: mainColor,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain_rounded,
              color: Colors.white,
              size: 90,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Landing page which the SplashPage navigates to
class MountsApp extends StatelessWidget {
  const MountsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to Mounts of the World!'),
      ),
    );
  }
}
