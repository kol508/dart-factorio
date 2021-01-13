import 'package:factorio/Other/Notification.dart';

class Observer {
  String name;

  Observer(this.name);

  void notify(Notification notification) {
    print(notification);
  }
}