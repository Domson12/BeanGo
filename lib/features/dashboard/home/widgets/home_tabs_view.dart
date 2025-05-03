import 'package:bean_go/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomeTabsView extends StatelessWidget {
  const HomeTabsView({super.key});

  @override
  Widget build(BuildContext context) {
    final tabLabels = [
      context.s.coffee,
      context.s.non_coffee,
      context.s.pastry,
    ];
    final theme = Theme.of(context);
    final controller = DefaultTabController.of(context);

    return TabBar(
      controller: controller,
      tabAlignment: TabAlignment.center,
      isScrollable: true,
      labelColor: theme.colorScheme.primary,
      unselectedLabelColor: theme.colorScheme.outline.withAlpha(80),
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: theme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w400,
      ),
      tabs: tabLabels.map((label) => Tab(text: label)).toList(),
    );
  }
}
