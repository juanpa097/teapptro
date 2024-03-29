import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/presentation/spacing.dart';
import '../../../../injection.dart';
import '../../../search/domain/entities/event.dart';
import '../../../search/domain/usecases/format_event_item_date.dart';
import '../bloc/event_details_watcher_bloc.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key, required this.eventId});

  final String eventId;

  @override
  Widget build(BuildContext context) {
    final Stack topContent = Stack(
      children: [
        Container(
          height: 240,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: Spacing.s8,
          bottom: Spacing.s16,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) =>
            getIt<EventDetailsWatcherBloc>()..add(FetchEventById(eventId)),
        child: SingleChildScrollView(
          child: BlocBuilder<EventDetailsWatcherBloc, EventDetailsWatcherState>(
            builder: (context, state) {
              // if (state is LoadSuccess) {
              //   debugPrint('${state.event}');
              // }
              return switch (state) {
                Initial() => const Center(child: Text('Initial')),
                LoadInProgress() => const Center(child: Text('Loading')),
                LoadSuccess() => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      topContent,
                      EventInformationWidget(event: state.event),
                    ],
                  ),
                LoadFailure() => const Center(child: Text('Failure')),
              };
            },
          ),
        ),
      ),
    );
  }
}

class EventInformationWidget extends StatelessWidget {
  const EventInformationWidget({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    final FormatEventItemDate dateFormatter = getIt<FormatEventItemDate>();

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.s16,
        vertical: Spacing.s20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: Spacing.s24),
              child: Text(event.name,
                  style: Theme.of(context).textTheme.headlineSmall)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: Spacing.s8),
                child: Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dateFormatter(event.date),
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: Spacing.s8),
                  Text('Add to calendar',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
          const SizedBox(height: Spacing.s28),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: Spacing.s8),
                child: Icon(
                  Icons.pin_drop_outlined,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.locationName,
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: Spacing.s8),
                  Text(event.address,
                      style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: Spacing.s8),
                  Text('View on maps',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
          const SizedBox(height: Spacing.s36),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: Spacing.s8),
                  child: Text('About',
                      style: Theme.of(context).textTheme.titleMedium)),
              Text(event.description,
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
  }
}
