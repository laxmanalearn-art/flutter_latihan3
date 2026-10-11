import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Flutter'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            SectionTitle(title: '1. TextStyle Dasar'),
            BasicTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '2. Font, Weight, & Style'),
            FontTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '3. Spacing'),
            SpacingTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '4. Decoration & Shadow'),
            DecorationTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '5. Text Alignment'),
            AlignmentTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '6. MaxLines & Overflow'),
            OverflowTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '7. RichText & TextSpan'),
            RichTextWidget(),
            SizedBox(height: 20),

            SectionTitle(title: '8. TextScaler & Accessibility'),
            TextScalerWidget(),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// KUMPULAN CUSTOM WIDGET
// ==========================================

// 1. Text Style Dasar
class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello Flutter',
      style: TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
    );
  }
}

// 2. Font, Weight, dan Style
class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Normal', style: TextStyle(fontSize: 20)),
        Text('Bold', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('Semi Bold', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        Text('Italic', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
      ],
    );
  }
}

// 3. Spacing
class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Normal Text', style: TextStyle(fontSize: 20)),
        SizedBox(height: 20),
        Text('Letter Spacing', style: TextStyle(fontSize: 20, letterSpacing: 5)),
        SizedBox(height: 20),
        Text('Word Spacing Example', style: TextStyle(fontSize: 20, wordSpacing: 10)),
        SizedBox(height: 20),
        Text('Line 1\nLine 2\nLine 3', style: TextStyle(fontSize: 20, height: 2)),
      ],
    );
  }
}

// 4. Decoration and Shadow
class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Underline', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline)),
        SizedBox(height: 15),
        Text('Line Through', style: TextStyle(fontSize: 30, decoration: TextDecoration.lineThrough)),
        SizedBox(height: 15),
        Text('Background', style: TextStyle(fontSize: 20, backgroundColor: Colors.green)),
        SizedBox(height: 15),
        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 40,
            shadows: [Shadow(offset: Offset(5, 5), blurRadius: 25)],
          ),
        ),
      ],
    );
  }
}

// 5. Text Alignment
class AlignmentTextWidget extends StatelessWidget {
  const AlignmentTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all()),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Left',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 8),
          Text(
            'Center',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Right',
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 8),
          Text(
            'Justify: Flutter adalah framework untuk membuat aplikasi menggunakan satu codebase.',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

// 6. Maxlines and Overflow
class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all()),
      child: const Text(
        'Flutter adalah framework UI dari Google yang dapat digunakan untuk membuat aplikasi Android, iOS, Web dan Desktop.',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// 7. Rich Text
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: [
          TextSpan(text: 'Saya sedang belajar '),
          TextSpan(text: 'Flutter', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          TextSpan(text: ' dan '),
          TextSpan(text: 'Dart', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
        ],
      ),
    );
  }
}

// 8. Text Scaler
class TextScalerWidget extends StatelessWidget {
  const TextScalerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Text normal', style: TextStyle(fontSize: 20)),
        SizedBox(height: 10),
        Text('Text dengan ukuran lebih besar', textScaler: TextScaler.linear(1.5), style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

// 9. Section Title
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}