import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qerly/pages/survey_page/survey_page.controller.dart';

class SurveyPageView extends GetResponsiveView<SurveyPageController> {
  SurveyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          LinearProgressIndicator(value: .5),
          Text('Survey'),
        ],
      ),
    );
  }
}
