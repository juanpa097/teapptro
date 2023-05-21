import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/events_watcher/events_watcher_bloc.dart';

class SearchSliverAppBarWidget extends StatefulWidget {
  const SearchSliverAppBarWidget({super.key});

  @override
  State createState() => _SearchSliverAppBarState();
}

class _SearchSliverAppBarState extends State<SearchSliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final EventsWatcherBloc eventsWatcherBloc =
        BlocProvider.of<EventsWatcherBloc>(context);

    return SliverAppBar(
      floating: true,
      pinned: true,
      title: const Text('Events'),
      bottom: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          color: Theme.of(context).colorScheme.background,
          child: TextField(
            onChanged: (query) => eventsWatcherBloc.add(SearchForEvents(query)),
            decoration: const InputDecoration(
              hintText: 'Search for...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
