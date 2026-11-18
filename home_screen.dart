import 'package:flutter/material.dart';
import 'land_calculator_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('நில அளவு கணிப்பான்', 'Land Calculator', Icons.square_foot),
      ('அலகு மாற்றி', 'Unit Converter', Icons.swap_horiz),
      ('பட்டா / சிட்டா', 'Patta / Chitta', Icons.description),
      ('FMB வரைபடம்', 'FMB & Maps', Icons.map),
      ('PDF அறிக்கை', 'PDF Report', Icons.picture_as_pdf),
      ('AI உதவியாளர்', 'AI Assistant', Icons.support_agent),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('AI Nilam Smart'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('உங்கள் நிலத்திற்கு ஸ்மார்ட் உதவியாளர்',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          const Text('Land tools for Tamil Nadu and India'),
          const SizedBox(height: 18),
          Expanded(child: GridView.builder(
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 1.18),
            itemBuilder: (context, i) => Card(
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  if (i == 0 || i == 1) {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const LandCalculatorScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${items[i].$2}: இந்த வசதி அடுத்த கட்டத்தில் இணைக்கப்படும்.')));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(items[i].$3, size: 34, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(height: 10),
                    Text(items[i].$1, textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(items[i].$2, textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall),
                  ]),
                ),
              ),
            ),
          )),
          const Text('குறிப்பு: கணக்கீடுகள் வழிகாட்டுதலுக்கானவை. சட்டப்பூர்வ நில உரிமைச் சான்றாகாது.',
            style: TextStyle(fontSize: 11, color: Colors.black54)),
        ]),
      ),
    );
  }
}
