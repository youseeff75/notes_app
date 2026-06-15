import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:notes_app/views/notes_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// هنا تم تعديل الاسم ليكون متوافقاً تماماً مع السطر اللي فوق
class _SplashScreenState extends State<SplashScreen> {
  // متغير للتحكم في ظهور النص التوضيحي
  double _descriptionOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    // بعد ثانية ونص (لما يكون اسم الأبليكيشن قارب يخلص كتابة) هنظهر النص التوضيحي
    Timer(const Duration(milliseconds: 1500), () {
      if (mounted) {
        setState(() {
          _descriptionOpacity = 1.0;
        });
      }
    });

    // الانتقال للصفحة الرئيسية بعد 4 ثواني
    Timer(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const NotesView(),
          ),
        );
      }
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

            // اسم التطبيق المتحرك
            SizedBox(
              height: 50,
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

            // النص التوضيحي مع تأثير الفيد (Fade In)
            AnimatedOpacity(
              opacity: _descriptionOpacity,
              duration: const Duration(milliseconds: 800),
              child: const Text(
                "Organize your ideas beautifully ✨",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}