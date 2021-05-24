import 'package:bloc/bloc.dart';
import 'package:gymbuddy/pages/MyProfile.dart';
import 'package:gymbuddy/pages/Settings.dart';
import 'package:gymbuddy/pages/homepage.dart';
import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyProfileClickedEvent,
  SettingsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      
      case NavigationEvents.MyProfileClickedEvent:
        yield MyProfile();
        break;
      
      case NavigationEvents.SettingsClickedEvent:
        yield Settings();
        break;
    }
  }
}
