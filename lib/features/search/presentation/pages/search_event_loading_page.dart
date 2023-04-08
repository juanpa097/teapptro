import 'package:flutter/material.dart';

class SearchEventLoadingEvent extends StatelessWidget {
  const SearchEventLoadingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
