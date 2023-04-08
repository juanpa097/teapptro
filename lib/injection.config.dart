// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'common/data/firebase_injectable_module.dart' as _i7;
import 'features/search/data/repositories/events_repository_impl.dart' as _i5;
import 'features/search/domain/repositories/events_repository.dart' as _i4;
import 'features/search/presentation/bloc/events_watcher/events_watcher_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final _i2.GetItHelper gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final _$FirebaseInjectableModule firebaseInjectableModule =
        _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i4.EventsRepository>(
        () => _i5.EventsRepositoryImpl(gh<_i3.FirebaseFirestore>()));
    gh.factory<_i6.EventsWatcherBloc>(
        () => _i6.EventsWatcherBloc(gh<_i4.EventsRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i7.FirebaseInjectableModule {}
