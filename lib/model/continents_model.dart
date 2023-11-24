import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'continents_model.g.dart';

@JsonSerializable()
final class ContinentsModel extends Equatable {
  final String? code;
  final String? name;

  const ContinentsModel({
    this.code,
    this.name,
  });

  // mapping list with from json
  static List<ContinentsModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ContinentsModel.fromJson(json)).toList();
  }

  factory ContinentsModel.fromJson(Map<String, dynamic> json) => _$ContinentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContinentsModelToJson(this);

  @override
  List<Object?> get props => [
        code,
        name,
      ];
}
