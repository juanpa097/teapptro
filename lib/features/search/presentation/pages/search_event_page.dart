import 'package:flutter/material.dart';
import 'package:teapptro/features/search/presentation/widgets/events_summary_widget.dart';
import 'package:teapptro/features/search/presentation/widgets/filter_list_widget.dart';
import 'package:teapptro/features/search/presentation/widgets/search_sliver_app_bar_widget.dart';

class SearchEventPage extends StatelessWidget {
  const SearchEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SearchSliverAppBarWidget(),
          const FilterListWidget(),
          SliverList(
              delegate: SliverChildListDelegate([
                const EventSummaryWidget(),
            Text("displayLarge",
                style: Theme.of(context).textTheme.displayLarge),
            Text("displayMedium",
                style: Theme.of(context).textTheme.displayMedium),
            Text("displaySmall",
                style: Theme.of(context).textTheme.displaySmall),
            Text("headlineLarge",
                style: Theme.of(context).textTheme.headlineLarge),
            Text("headlineMedium",
                style: Theme.of(context).textTheme.headlineMedium),
            Text("headlineSmall",
                style: Theme.of(context).textTheme.headlineSmall),
            Text("titleLarge", style: Theme.of(context).textTheme.titleLarge),
            Text("titleMedium", style: Theme.of(context).textTheme.titleMedium),
            Text("titleSmall", style: Theme.of(context).textTheme.titleSmall),
            Text("bodyLarge", style: Theme.of(context).textTheme.bodyLarge),
            Text("bodyMedium", style: Theme.of(context).textTheme.bodyMedium),
            Text("bodySmall", style: Theme.of(context).textTheme.bodySmall),
            Text("labelLarge", style: Theme.of(context).textTheme.labelLarge),
            Text("labelMedium", style: Theme.of(context).textTheme.labelMedium),
            Text("labelSmall", style: Theme.of(context).textTheme.labelSmall),
          ])),
        ],
      ),
    );
  }
}
