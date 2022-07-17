part of 'flats_cubit.dart';

abstract class FlatsState extends Equatable {
  const FlatsState();

  @override
  List<Object> get props => [];
}

class FlatsInitial extends FlatsState {}

class FlatsLoading extends FlatsState {}

class FlatsLoadingDone extends FlatsState {
  final List<Flats> flats;
  const FlatsLoadingDone(this.flats);
}

class FlatsLoadingFailure extends FlatsState {}
