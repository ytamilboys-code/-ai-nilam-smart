import 'package:flutter/material.dart';

class LandCalculatorScreen extends StatefulWidget {
  const LandCalculatorScreen({super.key});
  @override
  State<LandCalculatorScreen> createState() => _LandCalculatorScreenState();
}

class _LandCalculatorScreenState extends State<LandCalculatorScreen> {
  final length = TextEditingController();
  final width = TextEditingController();
  double? sqft;
  @override
  void dispose() { length.dispose(); width.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('நில அளவு கணிப்பான்')),
    body: ListView(padding: const EdgeInsets.all(18), children: [
      const Text('செவ்வக / சதுர நிலம்', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      const SizedBox(height: 14),
      TextField(controller: length, keyboardType: TextInputType.number,
        decoration: const InputDecoration(labelText: 'நீளம் (அடி)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextField(controller: width, keyboardType: TextInputType.number,
        decoration: const InputDecoration(labelText: 'அகலம் (அடி)', border: OutlineInputBorder())),
      const SizedBox(height: 14),
      FilledButton(onPressed: () {
        final l = double.tryParse(length.text);
        final w = double.tryParse(width.text);
        if (l == null || w == null || l <= 0 || w <= 0) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('சரியான அளவுகளை உள்ளிடவும்')));
          return;
        }
        setState(() => sqft = l * w);
      }, child: const Text('கணக்கிடு')),
      if (sqft != null) Card(
        child: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('${sqft!.toStringAsFixed(2)} சதுர அடி', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('Cent: ${(sqft! / 435.6).toStringAsFixed(4)}'),
          Text('Ground: ${(sqft! / 2400).toStringAsFixed(4)}'),
          Text('Acre: ${(sqft! / 43560).toStringAsFixed(5)}'),
          Text('சதுர மீட்டர்: ${(sqft! / 10.7639104167).toStringAsFixed(3)}'),
        ])),
      ),
    ]),
  );
}
