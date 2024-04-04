

import 'package:pro_mina/core/networking/api_error_handler.dart';
import 'package:pro_mina/core/networking/api_result.dart';
import 'package:pro_mina/core/networking/api_service.dart';
import 'package:pro_mina/features/home/data/model/gallerymodel/gallerymodel.dart';

 class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);
  Future<ApiResult<Gallerymodel>> getHomeGallery(Gallerymodel gallerymodel) async {
    try{
      final response = await _apiService.getAllGallery(gallerymodel);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}