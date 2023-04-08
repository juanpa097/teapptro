import 'package:flutter/material.dart';

class SearchSliverAppBarWidget extends StatefulWidget {
  const SearchSliverAppBarWidget({super.key});

  @override
  State createState() => _SearchSliverAppBarState();
}

class _SearchSliverAppBarState extends State<SearchSliverAppBarWidget> {
  @override
  Widget build(BuildContext context) => SliverAppBar(
        floating: true,
        pinned: true,
        title: const Text('Events'),
        bottom: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            color: Theme.of(context).backgroundColor,
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search for...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      );
}
