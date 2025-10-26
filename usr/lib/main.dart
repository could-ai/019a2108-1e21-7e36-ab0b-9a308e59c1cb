import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/badge.dart' as custom_badge;

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
            custom_badge.Badge(text: 'Primary'),
            custom_badge.Badge(text: 'Secondary', variant: custom_badge.BadgeVariant.secondary),
            custom_badge.Badge(text: 'Destructive', variant: custom_badge.BadgeVariant.destructive),
            custom_badge.Badge(text: 'Outline', variant: custom_badge.BadgeVariant.outline),
          ],
        ),
      ),
    );
  }
}
