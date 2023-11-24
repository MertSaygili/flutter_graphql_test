import 'package:flutter/material.dart';

@immutable
final class Queries {
  static const fetchContitnents = """
    query {
      continents {
        code
        name
      }
    }
  """;
  
}
