import 'package:flutter/material.dart';

class EventItemCardWidget extends StatelessWidget {
  const EventItemCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network('https://picsum.photos/250?image=9', width: 100),
        const EventCardInfo(),
        const EventCardActionItems(),
      ],
    ));
  }
}

class EventCardInfo extends StatelessWidget {
  const EventCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Thu, Apr 19 · 20.00 Pm",
            style: Theme.of(context).textTheme.caption),
        Text("Of Monster and Man",
            style: Theme.of(context).textTheme.subtitle1),
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
    );
  }
}

class EventCardActionItems extends StatelessWidget {
  const EventCardActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Theme.of(context).colorScheme.error)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
      ],
    );
  }
}
