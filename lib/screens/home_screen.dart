import 'package:flutter/material.dart';
import 'package:flutter_graphql_test/screens/continents_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter GraphQL Test')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ContinentsScreen())),
              child: const Text('Fetch Continents'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ContinentsScreen())),
              child: const Text('Fetch From IFM'),
            ),
          ],
        ),
      ),
    );
  }
}
