import 'package:flutter/material.dart';
import 'package:playground/sample_chip.dart';
import 'package:playground/sample_radio_button.dart';

void main() {
  runApp(const MainApp());
}

class SamplePage {
  const SamplePage({
    required this.page,
    required this.title,
    required this.leading,
  });
  final Widget page;
  final Widget leading;
  final String title;
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const samples = <SamplePage>[
    SamplePage(
      page: SampleRadioButton(),
      title: 'ラジオボタン',
      leading: Radio(
        value: null,
        groupValue: null,
        onChanged: null,
      ),
    ),
    SamplePage(
      page: SampleChip(),
      title: 'チップ',
      leading: Chip(
        label: Text('chip'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Color(0xFFE30B21),
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            elevation: 0),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFE30B21),
          elevation: 0,
          title: const Text(
            'Flutter道場サンプル集',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: samples.length,
          itemBuilder: (context, index) {
            final sample = samples[index];

            return ListTile(
              title: Text(sample.title),
              leading: sample.leading,
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return sample.page;
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
