import 'Notification.dart';
import 'Observer.dart';

class Observable {
  List<Observer> _observers;

  Observable([List<Observer> observers]){
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer){
    _observers.add(observer);
  }

  void notifyObserver(Notification notification){
    for(var observer in _observers){
      observer.notify(notification);
    }
  }
}