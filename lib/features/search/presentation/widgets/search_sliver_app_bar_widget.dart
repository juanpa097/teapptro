import 'package:flutter/material.dart';
import 'package:teapptro/common/presentation/spacing.dart';

class SearchSliverAppBarWidget extends StatefulWidget {
  const SearchSliverAppBarWidget({Key? key}) : super(key: key);

  @override
  State createState() => _SearchSliverAppBarState();
}

class _SearchSliverAppBarState extends State<SearchSliverAppBarWidget> {

  @override
  Widget build(BuildContext context) =>
      SliverAppBar(
        floating: true,
        pinned: true,
        snap: false,
        title: const Text("Events"),
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
