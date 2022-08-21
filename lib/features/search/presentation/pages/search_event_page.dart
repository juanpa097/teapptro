import 'package:flutter/material.dart';
import 'package:teapptro/features/search/presentation/widgets/event_item_card_widget.dart';
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
            delegate: SliverChildListDelegate(
              [
                const EventSummaryWidget(),
                const EventItemCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
