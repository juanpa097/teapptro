import 'package:dartz/dartz.dart';
import 'package:teapptro/common/error/Failure.dart';
import 'package:teapptro/features/search/data/datasources/events_data_source.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

// class EventsRepositoryImpl extends EventsRepository {
//
//   final EventsDataSource dataSource;
//
//
//   EventsRepositoryImpl({required this.dataSource});
//
//   @override
//   Either<Failure, Stream<Iterable<Event>>>> getEvents() async {
//     final events = await dataSource.fetchAllEvents();
//     return right(events);
//   }
//
// }
