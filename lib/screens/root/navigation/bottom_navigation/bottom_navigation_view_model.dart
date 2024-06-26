
import 'package:flutter/cupertino.dart';
import '../../../../core/presentation/base_view_model.dart';

class BottomNavViewModel extends BaseViewModel<BottomNavEvent, Tabs> {
  final tabs = Tabs.values;

  BottomNavViewModel() : super(Tabs.home);
  @override
  Future<BaseState<Tabs>> handleEvent(BottomNavEvent event) async {
    switch (event) {
      case ChangeTab(): {
        if (state.data == event.destination) { return state; }
        return state.copyWith(data: event.destination);
      }
    }
    return state;
  }

}

enum Tabs {
  home(CupertinoIcons.house_fill, "home"),
  search(CupertinoIcons.search, "search"),
  wishlist(CupertinoIcons.heart_fill, "wishlist"),
  profile(CupertinoIcons.person_solid, "profile");

  const Tabs(this.icon, this.name);

  final IconData icon;
  final String name;
}

abstract class BottomNavEvent {}
class ChangeTab implements BottomNavEvent {
  final Tabs destination;
  ChangeTab(this.destination);
}