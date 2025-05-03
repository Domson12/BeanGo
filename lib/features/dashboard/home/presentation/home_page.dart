import 'package:auto_route/annotations.dart';
import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/features/dashboard/home/presentation/tabs/coffee/coffee_tab_view.dart';
import 'package:bean_go/features/dashboard/home/presentation/tabs/non_coffee/non_coffee_tab_view.dart';
import 'package:bean_go/features/dashboard/home/presentation/tabs/pastry/pasty_tab_view.dart';
import 'package:bean_go/features/dashboard/home/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/home_tabs_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              Expanded(child: HomeSearchBar()),
            ],
          ),
        ),
        body: Padding(
          padding: AppDefaults.paddingHorizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDefaults.gap16,
              const HomeTabsView(),
              Expanded(
                child: TabBarView(
                  children: const [
                    CoffeeTabView(),
                    NonCoffeeTabView(),
                    PastyTabView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
