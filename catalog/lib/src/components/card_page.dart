import 'package:flutter/material.dart' hide Card;
import 'package:orbit/orbit.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              title: 'Card title',
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            SizedBox(height: 8),
            Card(
              title: 'Card title',
              descriprion: 'This is description of the card',
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            SizedBox(height: 8),
            Card(
              icon: OrbitIcons.airplane,
              title: 'Card title',
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            SizedBox(height: 8),
            Card(
              title: 'Card title',
              actions: [
            Button(label: 'Action', onPressed: () => {}, size: ButtonSize.small, isFullWidth: false,),
              ],
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            SizedBox(height: 8),
            Card(
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
