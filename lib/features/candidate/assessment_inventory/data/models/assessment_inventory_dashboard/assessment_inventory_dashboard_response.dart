import 'package:json_annotation/json_annotation.dart';

part 'assessment_inventory_dashboard_response.g.dart';

@JsonSerializable()
class AssessmentInventoryDashboardResponse {
  final AssessmentInventoryDashboardData data;

  AssessmentInventoryDashboardResponse({required this.data});

  factory AssessmentInventoryDashboardResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AssessmentInventoryDashboardResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AssessmentInventoryDashboardResponseToJson(this);
}

@JsonSerializable()
class AssessmentInventoryDashboardData {
  @JsonKey(name: 'total_finalized_results')
  final int totalFinalizedResults;

  @JsonKey(name: 'average_percentage')
  final num averagePercentage;

  AssessmentInventoryDashboardData({
    required this.totalFinalizedResults,
    required this.averagePercentage,
  });

  factory AssessmentInventoryDashboardData.fromJson(
    Map<String, dynamic> json,
  ) => _$AssessmentInventoryDashboardDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AssessmentInventoryDashboardDataToJson(this);
}
