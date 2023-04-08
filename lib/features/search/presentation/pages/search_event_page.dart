import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/presentation/build_context_extentions.dart';
import '../../../../common/presentation/spacing.dart';
import '../../../../injection.dart';
import '../../domain/entities/event.dart';
import '../bloc/events_watcher/events_watcher_bloc.dart';
import '../widgets/event_item_card_widget.dart';
import '../widgets/events_summary_widget.dart';
import '../widgets/filter_list_widget.dart';
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
                const FilterListWidget(),
                state.map(
                  initial: (state) => const SliverFillRemaining(
                      child: SearchEventLoadingEvent()),
                  loadInProgress: (state) => const SliverFillRemaining(
                      child: SearchEventLoadingEvent()),
                  loadSuccess: (state) => SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: Spacing.s16,
                        right: Spacing.s16,
                      ),
                      child: EventSummaryWidget(
                        numberOfEvents: state.events.length,
                      ),
                    ),
                  ),
                  loadFailure: (state) {
                    context.errorSnackBar(state.failure.e);
                    return const Text('Error');
                  },
                ),
                state.maybeMap(
                  loadSuccess: (state) => SliverPadding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Spacing.s16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: state.events.length,
                        (BuildContext context, int index) {
                          final Event event = state.events[index];
                          return EventItemCardWidget(event: event);
                        },
                      ),
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
