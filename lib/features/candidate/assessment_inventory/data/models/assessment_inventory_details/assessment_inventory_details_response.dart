import 'package:json_annotation/json_annotation.dart';

import '../assessment_inventory/assessment_inventory_response.dart';

part 'assessment_inventory_details_response.g.dart';

@JsonSerializable()
class AssessmentInventoryDetailsResponse {
  final AssessmentExam data;

  AssessmentInventoryDetailsResponse({required this.data});

  factory AssessmentInventoryDetailsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AssessmentInventoryDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AssessmentInventoryDetailsResponseToJson(this);
}
