import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        height: 160,
        width: 160,
        child: Image.asset('assets/images/logo.jpg', fit: .cover),
      ),
    );
  }
}
