// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_inventory_dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssessmentInventoryDashboardResponse
_$AssessmentInventoryDashboardResponseFromJson(Map<String, dynamic> json) =>
    AssessmentInventoryDashboardResponse(
      data: AssessmentInventoryDashboardData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AssessmentInventoryDashboardResponseToJson(
  AssessmentInventoryDashboardResponse instance,
) => <String, dynamic>{'data': instance.data};

AssessmentInventoryDashboardData _$AssessmentInventoryDashboardDataFromJson(
  Map<String, dynamic> json,
) => AssessmentInventoryDashboardData(
  totalFinalizedResults: (json['total_finalized_results'] as num).toInt(),
  averagePercentage: json['average_percentage'] as num,
);

Map<String, dynamic> _$AssessmentInventoryDashboardDataToJson(
  AssessmentInventoryDashboardData instance,
) => <String, dynamic>{
  'total_finalized_results': instance.totalFinalizedResults,
  'average_percentage': instance.averagePercentage,
};
