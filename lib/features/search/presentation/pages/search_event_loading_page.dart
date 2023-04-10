import 'package:flutter/material.dart';

class SearchEventLoadingPage extends StatelessWidget {
  const SearchEventLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
