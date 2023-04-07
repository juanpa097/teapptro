import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teapptro/common/presentation/spacing.dart';
import 'package:teapptro/features/search/presentation/bloc/events_watcher/events_watcher_bloc.dart';
import 'package:teapptro/features/search/presentation/widgets/event_item_card_widget.dart';
import 'package:teapptro/features/search/presentation/widgets/events_summary_widget.dart';
import 'package:teapptro/features/search/presentation/widgets/filter_list_widget.dart';
import 'package:teapptro/features/search/presentation/widgets/search_sliver_app_bar_widget.dart';
import 'package:teapptro/injection.dart';

class SearchEventPage extends StatelessWidget {
  const SearchEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<EventsWatcherBloc>()
          ..add(
            const EventsWatcherEvent.watchAllStarted(),
          ),
        child: BlocConsumer<EventsWatcherBloc, EventsWatcherState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                const SearchSliverAppBarWidget(),
                const FilterListWidget(),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.s16),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const EventSummaryWidget(),
                        state.maybeMap(
                          initial: (state) => const Text("Initial"),
                          loadFailure: (state) => const Text("Failure"),
                          loadInProgress: (state) => const Text("Loading"),
                          loadSuccess: (state) => const EventItemCardWidget(),
                          orElse: () => const Text("orElse"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
