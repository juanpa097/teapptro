import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/presentation/build_context_extensions.dart';
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
        create: (BuildContext context) => getIt<EventsWatcherBloc>()
          ..add(
            const EventsWatcherEvent.watchAllStarted(),
          ),
        child: BlocBuilder<EventsWatcherBloc, EventsWatcherState>(
          builder: (BuildContext context, EventsWatcherState state) {
            return CustomScrollView(
              slivers: [
                const SearchSliverAppBarWidget(),
                state.when(
                  initial: () => _getSliverLoadingState(),
                  loadInProgress: () => _getSliverLoadingState(),
                  loadFailure: (failure) => _handleErrorState(context, failure),
                  loadSuccess: (events) => EventsListSliver(events: events),
                ),
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
    context.errorSnackBar(failure.e);
    return SliverToBoxAdapter(child: Container());
  }
}
