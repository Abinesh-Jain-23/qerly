import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qerly/pages/survey_page/survey_page.controller.dart';

class SurveyPageView extends GetResponsiveView<SurveyPageController> {
  SurveyPageView({super.key});

  Widget question(String title, String ques) {
    RxBool sectionToggle = true.obs;
    return Obx(() => Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(ques),
            Flexible(
              child: sectionToggle.value
                  ? section('important')
                  : section('performance'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text('previous'.tr),
                  onTap: () => sectionToggle.value = true,
                ),
                InkWell(
                  child: Text('next'.tr),
                  onTap: () => sectionToggle.value = false,
                ),
              ],
            )
          ]),
        ));
  }

  Widget section(String type) {
    RxInt groupValue = 1.obs;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${type}qn'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Obx(() => RadioListTile(
                    selected: groupValue.value == index + 1,
                    title: Text(
                      '$type${index + 1}'.tr,
                      style: const TextStyle(fontSize: 14),
                    ),
                    value: index + 1,
                    groupValue: groupValue.value,
                    onChanged: (value) => groupValue.value = index + 1,
                    contentPadding: EdgeInsets.zero,
                  )),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List questions = List.generate(11, (index) {
      index++;
      return {
        'title': 'skill$index'.tr,
        'ques': 'question$index'.tr,
      };
    });
    return Obx(() => Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 15),
                child: Text('${controller.pageNumber}/${questions.length}'),
              )
            ],
          ),
          body: PageView(
            controller: controller.pageController,
            children: questions
                .map((item) => question(item['title'], item['ques']))
                .toList(),
            onPageChanged: (value) => controller.pageNumber.value = value + 1,
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
              onPressed: () {
                controller.pageNumber.value == 11
                    ? Get.toNamed('/ranking')
                    : controller.pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
              },
              child: Text('next'.tr),
            ),
          ),
        ));
  }
}
