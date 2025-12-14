import 'package:flutter/material.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SliderScreen')),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Slider(
                value: value.value,
                onChanged: (newValue) {
                  value.setValue(newValue);
                },
              );
            },
          ),
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red.withValues(alpha: value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.blue.withValues(alpha: value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green.withValues(alpha: value.value),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
