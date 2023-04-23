import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.name, required this.address});

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluro package"),
      ),
      body: Center(
        // ignore: prefer_interpolation_to_compose_strings
        child: Text(name + "'\n" + address),
      ),
    );
  }
}
