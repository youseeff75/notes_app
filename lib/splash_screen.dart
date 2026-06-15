import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:notes_app/views/notes_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 4 ثواني كافية جداً لظهور النصين ورا بعض بشكل مريح
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const NotesView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الأيقونة
            const Icon(
              Icons.note_alt_rounded,
              size: 100,
              color: Color(0xff8B5CF6),
            ),
            const SizedBox(height: 20),

            // اسم التطبيق المتحرك (تعديلك الجديد)
            SizedBox(
              height: 50, // حجز مساحة للخط الكبير عشان الـ Column ميتزقش لتحت وهو بيكتب
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Notes App',
                    textStyle: const TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
              ),
            ),

            const SizedBox(height: 10),

            // الوصف التوضيحي
            const Text(
              "Organize your ideas beautifully ✨",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}