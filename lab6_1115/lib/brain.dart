import 'list.dart';

class brain {
  int ques_num = 0;

  final List<ques> list = [
    ques('faisalabad ques 1', false),
    ques('lahore ques 2', true),
    ques('islamabad ques 3', true),
    ques('faisalabad ques 4', true),
    ques('lahore ques 5', true),
    ques('islamabad ques 6', false),
    ques('lahore ques 7', true),
    ques('islamabad ques 8', true),
    ques('faisalabad ques 9', true),
    ques('lahore ques 10', true),
  ];

  void next() {
    if (ques_num < list.length - 1) {
      ques_num++;
    }
  }

  String get() {
    return list[ques_num].ques_str;
  }

  bool CorrectAnswer() {
    return list[ques_num].Answer;
  }

  bool finish() {
    if (ques_num >= list.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    ques_num = 0;
  }
}
