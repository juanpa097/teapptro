import 'package:flutter/material.dart';

import '../../../../common/presentation/spacing.dart';
import '../../domain/entities/event.dart';
import 'event_item_card_widget.dart';
import 'events_summary_widget.dart';

class EventsListSliver extends StatelessWidget {
  const EventsListSliver({super.key, required this.events});

  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.s16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: events.length + 1, // One more for the header
          (BuildContext context, int index) {
            return _getEventCardOrHeader(index);
          },
        ),
      ),
    );
  }

  Widget _getEventCardOrHeader(int index) {
    if (index == 0) {
      return EventSummaryWidget(numberOfEvents: events.length);
    }
    return EventItemCardWidget(event: events[index - 1]);
  }
}
