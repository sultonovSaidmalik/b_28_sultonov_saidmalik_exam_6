import 'package:b_28_sultonov_saidmalik_exam_6/controollers/base_controller.dart';

class HomeController extends BaseController {
  int initialCategoryPage = 0;
  int initialPage = 0;

  void Function(void Function())? updater;
  bool isLoading = false;

  HomeController({this.updater});

  void buttonNavigationBar(int index) {
    initialPage = index;
    updater!(() {});
  }

}
