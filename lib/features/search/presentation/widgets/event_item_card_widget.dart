import 'package:flutter/material.dart';

import '../../../../common/presentation/spacing.dart';
import '../../../../injection.dart';
import '../../../details/presentation/pages/event_details_page.dart';
import '../../domain/entities/event.dart';
import '../../domain/usecases/format_event_item_date.dart';

class EventItemCardWidget extends StatelessWidget {
  const EventItemCardWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Spacing.s100,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(event.imageUrl.toString()),
              Expanded(child: EventCardInfo(event: event)),
              EventCardActionItems(event: event),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => EventDetailsPage(eventId: event.id,),
              ),
            );
          },
        ),
      ),
    );
  }
}

class EventCardInfo extends StatelessWidget {
  const EventCardInfo({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    final FormatEventItemDate dateFormatter = getIt<FormatEventItemDate>();
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: Spacing.s8, horizontal: Spacing.s12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateFormatter(event.date),
                style: Theme.of(context).textTheme.caption,
              ),
              Text(event.name, style: Theme.of(context).textTheme.subtitle1)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: Theme.of(context).textTheme.caption?.color,
              ),
              Text(event.locationName, style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      ),
    );
  }
}

class EventCardActionItems extends StatelessWidget {
  const EventCardActionItems({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
      ],
    );
  }
  final Event event;
}
