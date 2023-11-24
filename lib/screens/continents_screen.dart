import 'package:flutter/material.dart';
import 'package:flutter_graphql_test/model/continents_model.dart';
import 'package:flutter_graphql_test/service/graphql_manager.dart';
import 'package:flutter_graphql_test/service/queries.dart';
import 'package:flutter_graphql_test/service_parser/service_parser.dart';
import 'package:flutter_graphql_test/service_parser/service_parser_impl.dart';

class ContinentsScreen extends StatefulWidget {
  const ContinentsScreen({super.key});

  @override
  State<ContinentsScreen> createState() => _ContinentsScreenState();
}

class _ContinentsScreenState extends State<ContinentsScreen> {
  final ServiceParser _serviceParser = ServiceParserImpl();
  final List<ContinentsModel> _continents = <ContinentsModel>[];

  @override
  void initState() {
    _fetchContinents();
    super.initState();
  }

  void _fetchContinents() async {
    final response = await GraphqlManager.query('', Queries.fetchContitnents, _serviceParser.getContinentList);
    if ((response.isSuccess ?? false) && response.data != null) {
      setState(() {
        _continents.addAll(response.data!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Continents')),
      body: ListView.builder(
        itemCount: _continents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_continents[index].name ?? ''),
            subtitle: Text(_continents[index].code ?? ''),
          );
        },
      ),
    );
  }
}
