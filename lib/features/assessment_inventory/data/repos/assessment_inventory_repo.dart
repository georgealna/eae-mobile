import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/assessment_inventory_remote_data_source.dart';
import '../models/assessment_inventory_response.dart';

class AssessmentInventoryRepo {
  final AssessmentInventoryRemoteDataSource assessmentInventoryRemoteDataSource;
  final NetworkInfo networkInfo;

  AssessmentInventoryRepo({
    required this.assessmentInventoryRemoteDataSource,
    required this.networkInfo,
  });

  Future<AssessmentInventoryResponse> assessmentInventory() async {
    if (await networkInfo.isConnected) {
      try {
        return await assessmentInventoryRemoteDataSource.assessmentInventory();
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
