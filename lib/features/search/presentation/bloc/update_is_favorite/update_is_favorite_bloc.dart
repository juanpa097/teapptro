import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/event_failure.dart';
import '../../../domain/repositories/events_repository.dart';

part 'update_is_favorite_bloc.freezed.dart';

part 'update_is_favorite_event.dart';

part 'update_is_favorite_state.dart';

@injectable
class UpdateIsFavoriteBloc
    extends Bloc<UpdateIsFavoriteEvent, UpdateIsFavoriteState> {
  UpdateIsFavoriteBloc(this._eventsRepository)
      : super(const UpdateIsFavoriteState.initial()) {
    on<UpdateIsFavoriteEvent>(
      (event, emit) {
        event.when(
          isFavoriteChanged: (String eventId, bool isFavorite) async {
            emit(const UpdateIsFavoriteState.updateInProgress());
            final response =
                await _eventsRepository.updateIsFavorite(eventId, isFavorite);
            response.fold(
              (l) => emit(UpdateIsFavoriteState.updateFailure(l)),
              (_) => emit(const UpdateIsFavoriteState.updateSuccess()),
            );
          },
        );
      },
    );
  }

  final EventsRepository _eventsRepository;
}
