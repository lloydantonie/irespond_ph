import 'package:bloc/bloc.dart';
import 'package:irespond_ph/pages/Contactuspage.dart';
import 'package:irespond_ph/pages/aboutuspage.dart';
import 'package:irespond_ph/pages/donatepage.dart';
import 'package:irespond_ph/pages/homepage.dart';
import 'package:irespond_ph/pages/logout.dart';
import 'package:irespond_ph/pages/myaccountpage.dart';
import 'package:irespond_ph/pages/reportpage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  ReportPageClickedEvent,
  DonatePageClickedEvent,
  AboutUsPageClickedEvent,
  ContactUsPageClickedEvent,
  LogoutClickedEvent,
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
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.ReportPageClickedEvent:
        yield ReportPage();
        break;
      case NavigationEvents.DonatePageClickedEvent:
        yield DonatePage();
        break;
      case NavigationEvents.AboutUsPageClickedEvent:
        yield AboutUsPage();
        break;
      case NavigationEvents.ContactUsPageClickedEvent:
        yield ContactUsPage();
        break;
      case NavigationEvents.LogoutClickedEvent:
        yield Logout();
        break;
    }
  }
}