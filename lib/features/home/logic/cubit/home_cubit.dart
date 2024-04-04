
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/features/home/data/model/gallerymodel/gallerymodel.dart';
import 'package:pro_mina/features/home/data/repos/home_repo.dart';
import 'package:pro_mina/features/home/logic/cubit/home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo; 
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  void emitLoadingState(Gallerymodel gallerymodel) async{
    final response = await _homeRepo.getHomeGallery(gallerymodel);
    response.when(
      success: (gallerymodel) {
        emit(HomeState.success( gallerymodel));
      },
      failure: (errorHandler) {
        emit(HomeState.failure(error: errorHandler.apiErrorModel.message??""));
      },
    );
  }
}
