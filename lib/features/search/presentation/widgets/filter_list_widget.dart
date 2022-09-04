import 'package:flutter/material.dart';
import 'package:teapptro/common/presentation/spacing.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.only(right: Spacing.s4, left: Spacing.s16),
              child: FilterChip(
                label: const Text("Music"),
                selected: false,
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text("Business"),
                selected: false,
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text("Theater"),
                selected: true,
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text("Comedy"),
                selected: false,
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: Spacing.s16, left: Spacing.s4),
              child: FilterChip(
                label: const Text("Concert"),
                selected: false,
                onSelected: (bool value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
