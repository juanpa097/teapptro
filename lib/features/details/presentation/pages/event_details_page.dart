import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topContent,
        Text("Rosalia", style: Theme.of(context).textTheme.headline5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).textTheme.caption?.color,
                ),
                Text("Mon, Apr 18 · 21:00 Pm",
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
            Text("21:00 Pm - 23.30 Pm",
                style: Theme.of(context).textTheme.caption),
            Text("Add to calandar",
                style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.blueAccent, fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: Theme.of(context).textTheme.caption?.color,
                ),
                Text("Palau Sant Jordi",
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
            Text("Passeig Olímpic, 5-7, 08038 Barcelona",
                style: Theme.of(context).textTheme.caption),
            Text("View on maps",
                style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Colors.blueAccent, fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About", style: Theme.of(context).textTheme.subtitle1),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ],
    ));
  }
}
