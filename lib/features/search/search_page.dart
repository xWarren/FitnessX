import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart ' as colors;
import '../../core/resources/strings.dart' as strings;
import 'search_controller.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: colors.white,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Material(
                      elevation: 10.0,
                      shadowColor: colors.black,
                      borderRadius: BorderRadius.circular(14),
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          fillColor: colors.borderColor,
                          filled: true,
                          prefixIcon: Image.asset(Assets.icSearch),
                          hintText: strings.search,
                          hintStyle: const TextStyle(
                              fontSize: 16, color: colors.gray2),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(color: colors.gray3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(color: colors.gray3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ))),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Hello")),
          ],
        ),
      ),
    );
  }
}
