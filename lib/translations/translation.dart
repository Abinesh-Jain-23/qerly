import 'package:get/get.dart';

class LocalString extends Translations {
  final Map<String, String> english = {
    'welcome': 'Welcome',
    'email': 'Email',
    'question1':
        'I distinguish my capacity to recognise factors beyond my control from my ability to intellectually pinpoint the reasons for such limitations, understanding that true acceptance hinges on cognitive comprehension rather than emotional reactions.',
  };
  final Map<String, String> japanese = {
    'welcome': 'いらっしゃいませ',
    'email': 'Eメール',
    'question1':
        '私はコントロールできない要因を見分ける能力と、理知的に制限の理由を突き止める能力を区別し、「真の受容性」とは感情的な反応ではなく、認知的な理解力によるものだとわかっている。'
  };
  @override
  Map<String, Map<String, String>> get keys => {'en': english, 'jp': japanese};
}
