import 'package:flutter/material.dart';
import 'package:teapptro/common/presentation/spacing.dart';
import 'package:teapptro/features/details/presentation/pages/event_details_page.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';

class EventItemCardWidget extends StatelessWidget {
  final Event event;

  const EventItemCardWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

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
                    builder: (context) => const EventDetailsPage()));
          },
        ),
      ),
    );
  }
}

class EventCardInfo extends StatelessWidget {
  final Event event;

  const EventCardInfo({
    Key? key,
    required this.event,
  }) : super(key: key);

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
              Text("Thu, Apr 19 · 20.00 Pm",
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
              Text("Razzmatazz", style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      ),
    );
  }
}

class EventCardActionItems extends StatelessWidget {
  const EventCardActionItems({Key? key}) : super(key: key);

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
