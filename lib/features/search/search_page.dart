import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_controller.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Search Screen")],
      ),
    );
  }
}
