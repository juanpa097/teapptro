import 'package:flutter/material.dart';

import '../../../../common/presentation/spacing.dart';

class EventSummaryWidget extends StatelessWidget {
  const EventSummaryWidget({
    super.key,
    required this.numberOfEvents,
  });

  final int numberOfEvents;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Spacing.s20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$numberOfEvents Events',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
