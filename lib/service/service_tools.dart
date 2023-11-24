import 'package:flutter/material.dart';

@immutable
final class ServiceTools {
  static const String url = 'https://countries.trevorblades.com/graphql';
  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
