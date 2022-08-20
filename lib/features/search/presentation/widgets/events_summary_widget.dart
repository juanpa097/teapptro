import 'package:flutter/material.dart';
import 'package:teapptro/features/search/presentation/widgets/sort_selector_widget.dart';

class EventSummaryWidget extends StatelessWidget {
  const EventSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("123 Events"),
        SortSelectorWidget(),
      ],
    );
  }
}


