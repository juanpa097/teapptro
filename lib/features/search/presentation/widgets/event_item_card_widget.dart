import 'package:flutter/material.dart';

import '../../../../common/presentation/spacing.dart';
import '../../../details/presentation/pages/event_details_page.dart';
import '../../domain/entities/event.dart';

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
              const EventCardActionItems(),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const EventDetailsPage(),
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
              Text('Thu, Apr 19 · 20.00 Pm',
                  style: Theme.of(context).textTheme.caption),
              Text(event.name, style: Theme.of(context).textTheme.subtitle1)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: Theme.of(context).textTheme.caption?.color,
              ),
              Text('Razzmatazz', style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      ),
    );
  }
}

class EventCardActionItems extends StatelessWidget {
  const EventCardActionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite,
                color: Theme.of(context).colorScheme.error)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
      ],
    );
  }
}
