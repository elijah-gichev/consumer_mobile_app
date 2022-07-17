import 'package:bavito_mobile_app/data/repository/repository.dart';
import 'package:bavito_mobile_app/ui/models/details.dart';
import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'flats_state.dart';

class FlatsCubit extends Cubit<FlatsState> {
  final Repository repository;
  FlatsCubit(this.repository) : super(FlatsInitial());

  Future<void> loadFlats() async {
    try {
      emit(FlatsLoading());

      final flats = await repository.getFlats();

      emit(FlatsLoadingDone(flats));
    } catch (e) {
      emit(FlatsLoadingFailure());
    }
  }

  Future<void> loadFilteredFlats(Details details) async {
    try {
      emit(FlatsLoading());

      final flats = await repository.getFilteredFlats(details);

      emit(FlatsLoadingDone(flats));
    } catch (e) {
      emit(FlatsLoadingFailure());
    }
  }
}
