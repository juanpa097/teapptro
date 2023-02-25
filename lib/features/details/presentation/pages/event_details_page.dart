import 'package:flutter/material.dart';
import 'package:teapptro/common/presentation/spacing.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Events details");

    final topContent = Stack(
      children: <Widget>[
        Container(
          height: 240,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: Spacing.s8,
          bottom: Spacing.s16,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topContent,
            EventInformationWidget(),
          ],
        ),
      ),
    );
  }
}

class EventInformationWidget extends StatelessWidget {
  EventInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Spacing.s16, vertical: Spacing.s20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: Spacing.s24),
              child: Text("La Rosalia",
                  style: Theme.of(context).textTheme.headline5)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: Spacing.s8),
                child: Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).textTheme.caption?.color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mon, Apr 18 · 21:00 Pm",
                      style: Theme.of(context).textTheme.subtitle1),
                  const SizedBox(height: Spacing.s8),
                  Text("21:00 Pm - 23.30 Pm",
                      style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: Spacing.s8),
                  Text("Add to calandar",
                      style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
          const SizedBox(height: Spacing.s28),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: Spacing.s8),
                child: Icon(
                  Icons.pin_drop_outlined,
                  color: Theme.of(context).textTheme.caption?.color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Palau Sant Jordi",
                      style: Theme.of(context).textTheme.subtitle1),
                  const SizedBox(height: Spacing.s8),
                  Text("Passeig Olímpic, 5-7, 08038 Barcelona",
                      style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: Spacing.s8),
                  Text("View on maps",
                      style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
          const SizedBox(height: Spacing.s36),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: Spacing.s8),
                  child: Text("About",
                      style: Theme.of(context).textTheme.subtitle1)),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}
