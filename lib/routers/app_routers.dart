import 'package:fl_component/models/models.dart';
import 'package:fl_component/pages/inputs_page.dart';
import 'package:fl_component/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Page', page: HomePage()),
    MenuOption(route: 'listview1', icon: Icons.list_alt_outlined, name: 'List Page 1', page: Listview1Page()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'List Page 2', page: Listview2Page()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Cards Page', page: CardsPage()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert Page', page: AlertPage()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', page: AvatarPage()),
    MenuOption(route: 'inputs', icon: Icons.input_outlined, name: 'Inputs Page', page: InputsPage()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video_rounded, name: 'Slider Page', page: SliderPage()),
    MenuOption(route: 'listviewbuider', icon: Icons.build_circle_outlined, name: 'InfiniteScroll', page: ListViewBuiderPage()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext) => option.page});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoyte(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertPage(),
    );
  }


}
