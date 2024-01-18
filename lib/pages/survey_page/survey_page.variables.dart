import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin SurveyPageVariables {
  PageController pageController = PageController();
  RxInt pageNumber = 1.obs;
  RxBool section = true.obs;
}
