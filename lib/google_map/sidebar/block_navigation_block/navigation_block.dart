// import 'package:bloc/bloc.dart';

// enum NavigationEvents {
//   WalletPageClickedEvent,
//   HistoryPageClickedEvent,
//   PaymentPageClickedEvent,
// }

// abstract class NavigationState {}

// class NavigationBloc extends Bloc<NavigationEvents, NavigationState>{
//   @override
//   NavigationState get initialState => null
// }

//========================

import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(super.initialState);

  @override
  // HomePage get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        //yield const HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        // yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        // yield MyOrdersPage();
        break;
    }
  }
}
