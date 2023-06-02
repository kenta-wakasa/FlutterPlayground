import 'package:flutter/material.dart';

class SampleRadioButton extends StatefulWidget {
  const SampleRadioButton({super.key});

  @override
  State<SampleRadioButton> createState() => _SampleRadioButtonState();
}

class _SampleRadioButtonState extends State<SampleRadioButton> {
  String? selectedPokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ラジオボタン'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('ヒトカゲ'),
                Radio(
                  value: 'ヒトカゲ',
                  groupValue: selectedPokemon,
                  onChanged: (value) {
                    setState(() {
                      selectedPokemon = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('ゼニガメ'),
                Radio(
                  value: 'ゼニガメ',
                  groupValue: selectedPokemon,
                  onChanged: (value) {
                    setState(() {
                      selectedPokemon = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('フシギダネ'),
                Radio(
                  value: 'フシギダネ',
                  groupValue: selectedPokemon,
                  onChanged: (value) {
                    setState(() {
                      selectedPokemon = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
