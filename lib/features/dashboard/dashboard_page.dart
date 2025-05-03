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
      physics: NeverScrollableScrollPhysics(),
      routes: const [
        HomeRoute(),
        HistoryRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: context.colors.outline,
                  width: 1,
                ),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: context.colors.outline,
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: NavigationBar(
                indicatorColor: Colors.transparent,
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
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
                    label: context.s.home,
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
                    label: context.s.history,
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
                    label: context.s.profile,
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
            ),
          ),
        );
      },
    );
  }
}
