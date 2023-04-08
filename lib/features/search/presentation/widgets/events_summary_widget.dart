import 'package:flutter/material.dart';
import 'sort_selector_widget.dart';

class EventSummaryWidget extends StatelessWidget {
  const EventSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('123 Events', style: Theme.of(context).textTheme.subtitle2),
        const SortSelectorWidget(),
      ],
    );
  }
}
