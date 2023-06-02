import 'package:flutter/material.dart';

class SampleChip extends StatefulWidget {
  const SampleChip({super.key});

  @override
  State<SampleChip> createState() => _SampleChipState();
}

class _SampleChipState extends State<SampleChip> {
  static const values = [
    '女性限定',
    'トイレ・バス別',
    'ロフト付き',
  ];

  var selectedValues = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'チップ',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
            spacing: 16,
            children: values.map((e) {
              return FilterChip(
                label: Text(
                  e,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                checkmarkColor: Colors.white,
                selected: selectedValues.contains(e),
                selectedColor: Colors.red,
                backgroundColor: Colors.grey,
                onSelected: (value) {
                  if (value) {
                    // selectedValuesに追加する
                    setState(() {
                      selectedValues.add(e);
                    });
                  } else {
                    // selectedValuesから取り除く
                    setState(() {
                      selectedValues.remove(e);
                    });
                  }
                },
              );
            }).toList()),
      ),
    );
  }
}
