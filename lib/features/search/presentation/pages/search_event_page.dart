import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/presentation/spacing.dart';
import '../../../../injection.dart';
import '../../domain/entities/event.dart';
import '../bloc/events_watcher/events_watcher_bloc.dart';
import '../widgets/event_item_card_widget.dart';
import '../widgets/filter_list_widget.dart';
import '../widgets/search_sliver_app_bar_widget.dart';

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
                const FilterListWidget(),
                SliverPadding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Spacing.s16),
                    sliver: state.map(
                      initial: (EventsWatcherState state) => const SliverFillRemaining(
                          child: Center(child: Text('Initial'))),
                      loadFailure: (state) => SliverFillRemaining(
                          child: Center(
                              child: Text(state.failure.e?.toString() ?? ''))),
                      loadInProgress: (state) => const SliverFillRemaining(
                          child: Center(child: CircularProgressIndicator())),
                      loadSuccess: (state) => SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          final Event event = state.events[index];
                          return EventItemCardWidget(event: event);
                        }, childCount: state.events.length),
                      ),
                    )
                    // SliverList(
                    //   delegate: SliverChildListDelegate(
                    //     [
                    //       const EventSummaryWidget(),
                    //       state.maybeMap(
                    //         initial: (state) => const Text("Initial"),
                    //         loadFailure: (state) => Text(state.failure.e?.toString() ?? ""),
                    //         loadInProgress: (state) => const Text("Loading"),
                    //         loadSuccess: (state) => Text(state.events.toString()),
                    //         orElse: () => const Text("orElse"),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
