import 'package:flutter/material.dart';
import '../../../../common/presentation/spacing.dart';

class FilterListWidget extends StatelessWidget {
  const FilterListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: Spacing.s64,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: Spacing.s4, left: Spacing.s16),
              child: FilterChip(
                label: const Text('Music'),
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text('Business'),
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text('Theater'),
                selected: true,
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.s4),
              child: FilterChip(
                label: const Text('Comedy'),
                onSelected: (bool value) {},
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: Spacing.s16, left: Spacing.s4),
              child: FilterChip(
                label: const Text('Concert'),
                onSelected: (bool value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
