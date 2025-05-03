import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bean_go/core/navigation/app_router.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        HistoryRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: context.tabsRouter.activeIndex,
            onDestinationSelected: (int index) {
              context.tabsRouter.setActiveIndex(index);
            },
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.svg.fiHome,
                  colorFilter: ColorFilter.mode(
                    context.colors.outline,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Home',
                selectedIcon: SvgPicture.asset(
                  Assets.svg.fiHome,
                  colorFilter: ColorFilter.mode(
                    context.colors.primaryMain,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.svg.order,
                  colorFilter: ColorFilter.mode(
                    context.colors.outline,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'History',
                selectedIcon: SvgPicture.asset(
                  Assets.svg.order,
                  colorFilter: ColorFilter.mode(
                    context.colors.primaryMain,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.svg.fiUserAltLight,
                  colorFilter: ColorFilter.mode(
                    context.colors.outline,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Profile',
                selectedIcon: SvgPicture.asset(
                  Assets.svg.fiUserAltLight,
                  colorFilter: ColorFilter.mode(
                    context.colors.primaryMain,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
