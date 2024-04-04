import 'package:dio/dio.dart';
import 'package:pro_mina/core/networking/api_constants.dart';
import 'package:pro_mina/features/auth/data/models/login_response.dart';
import 'package:pro_mina/features/home/data/model/gallerymodel/gallerymodel.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/login_request_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @GET("my-gallery")
  Future<Gallerymodel> getAllGallery(@Body() Gallerymodel gallerymodel);
}
