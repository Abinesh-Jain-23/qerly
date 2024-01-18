import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:qerly/pages/ranking_page/ranking_page.controller.dart';

class RankingPageView extends GetResponsiveView<RankingPageController> {
  RankingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    RxList<Widget> items = List.generate(
      11,
      (index) => ListTile(
          key: ValueKey('skill${index + 1}'),
          title: Text('skill${index + 1}'.tr)),
    ).obs;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'ranking'.tr,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('question12'.tr),
                ],
              ),
            ),
            ReorderableListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              onReorder: (int oldIndex, int newIndex) {
                if (oldIndex < newIndex) newIndex -= 1;
                final item = items.removeAt(oldIndex);
                items.insert(newIndex, item);
              },
              children: items,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 46,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0))),
          ),
          onPressed: () {},
          child: Text('submit'.tr),
        ),
      ),
    );
  }
}
