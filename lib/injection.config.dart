// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:teapptro/common/data/firebase_injectable_module.dart' as _i9;
import 'package:teapptro/features/search/data/repositories/events_repository_impl.dart'
    as _i6;
import 'package:teapptro/features/search/domain/repositories/events_repository.dart'
    as _i5;
import 'package:teapptro/features/search/domain/usecases/format_event_item_date.dart'
    as _i4;
import 'package:teapptro/features/search/presentation/bloc/events_watcher/events_watcher_bloc.dart'
    as _i7;
import 'package:teapptro/features/search/presentation/bloc/update_is_favorite/update_is_favorite_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.factory<_i4.FormatEventItemDate>(() => _i4.FormatEventItemDate());
    gh.lazySingleton<_i5.EventsRepository>(
        () => _i6.EventsRepositoryImpl(gh<_i3.FirebaseFirestore>()));
    gh.factory<_i7.EventsWatcherBloc>(
        () => _i7.EventsWatcherBloc(gh<_i5.EventsRepository>()));
    gh.factory<_i8.UpdateIsFavoriteBloc>(
        () => _i8.UpdateIsFavoriteBloc(gh<_i5.EventsRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
