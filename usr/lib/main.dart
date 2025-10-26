import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/badge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Badge Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge Widget Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          alignment: WrapAlignment.center,
          children: const <Widget>[
            Badge(text: 'Primary'),
            Badge(text: 'Secondary', variant: BadgeVariant.secondary),
            Badge(text: 'Destructive', variant: BadgeVariant.destructive),
            Badge(text: 'Outline', variant: BadgeVariant.outline),
          ],
        ),
      ),
    );
  }
}
