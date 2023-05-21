import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../domain/entities/event_failure.dart';
import '../bloc/events_watcher/events_watcher_bloc.dart';
import '../widgets/events_list_sliver.dart';
import '../widgets/search_sliver_app_bar_widget.dart';
import 'search_event_loading_page.dart';

class SearchEventPage extends StatelessWidget {
  const SearchEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) =>
            getIt<EventsWatcherBloc>()..add(WatchAllStarted()),
        child: BlocBuilder<EventsWatcherBloc, EventsWatcherState>(
          builder: (BuildContext context, EventsWatcherState state) {
            return CustomScrollView(
              slivers: [
                const SearchSliverAppBarWidget(),
                switch (state) {
                  Initial() => _getSliverLoadingState(),
                  LoadInProgress() => _getSliverLoadingState(),
                  LoadFailure() => _handleErrorState(context, state.failure),
                  LoadSuccess() => EventsListSliver(events: state.events)
                }
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _getSliverLoadingState() => const SliverFillRemaining(
        child: SearchEventLoadingPage(),
      );

  Widget _handleErrorState(BuildContext context, EventFailure failure) {
    debugPrintStack(stackTrace: failure.e?.stackTrace);
    return SliverToBoxAdapter(
        child: Text(failure.e?.stackTrace.toString() ?? ''));
  }
}
