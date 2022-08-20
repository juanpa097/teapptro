import 'package:flutter/material.dart';

class FilterListWidget extends StatelessWidget {
  const FilterListWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 64.0, // TODO - Create constant sizes
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: const [
            SizedBox(width: 6,),
            Chip(label: Text("Filters")),
            SizedBox(width: 6,),
            Chip(label: Text("Data")),
            SizedBox(width: 6,),
            Chip(label: Text("Music")),
            SizedBox(width: 6,),
            Chip(label: Text("Business")),
            SizedBox(width: 6,),
            Chip(label: Text("Theater")),
            SizedBox(width: 6,),
            Chip(label: Text("Comedy")),
            SizedBox(width: 6,),
            Chip(label: Text("Concert")),
            SizedBox(width: 6,),
          ],
        ),
      ),
    );
  }
}
