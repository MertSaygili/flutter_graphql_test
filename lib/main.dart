import 'package:flutter/material.dart';
import 'package:flutter_graphql_test/screens/home_screen.dart';
import 'package:flutter_graphql_test/service/graphql_manager.dart';

void main() {
  // ignore: unused_local_variable, will be dependency injected
  final GraphqlManager graphqlManager = GraphqlManager();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GraphQL Test',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
