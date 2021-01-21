import 'package:mobx/mobx.dart';
part 'controller_worklist.g.dart';

class WorklistController = WorklistControllerBase with _$WorklistController;

abstract class WorklistControllerBase with Store {

  @observable
  String activity = 'Nome';

  @observable
  ObservableList <String> activities = ObservableList.of([]);

  @action
  void addWork() {
    activities.add(activity);
  }

  @action
  void setActivity(String text) {
    activity = text;
  }


}

