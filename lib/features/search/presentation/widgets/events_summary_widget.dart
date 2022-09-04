import 'package:flutter/material.dart';
import 'package:teapptro/features/search/presentation/widgets/sort_selector_widget.dart';

class EventSummaryWidget extends StatelessWidget {
  const EventSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("123 Events", style: Theme.of(context).textTheme.subtitle2),
        const SortSelectorWidget(),
      ],
    );
  }
}


