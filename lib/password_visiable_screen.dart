import 'package:flutter/material.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/visiable_provider.dart';
import 'package:provider/provider.dart';

class PasswordVisiableScreen extends StatelessWidget {
  const PasswordVisiableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Password')),
      body: Column(
        children: [
          Consumer<VisiableProvider>(
            builder: (context, value, child) {
              return TextFormField(
                obscureText: value.toggle,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: InkWell(
                    onTap: () {
                      value.setToggle();
                    },
                    child: Icon(
                      value.toggle ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
