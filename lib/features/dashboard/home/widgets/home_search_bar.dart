import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bean_go/core/utils/extensions.dart';

import '../../../../gen/assets.gen.dart';

class HomeSearchBar extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  const HomeSearchBar({super.key, this.onChanged});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final _searchSubject = BehaviorSubject<String>();
  late StreamSubscription _debounceSub;

  @override
  void initState() {
    super.initState();
    _debounceSub = _searchSubject
        .debounceTime(const Duration(milliseconds: 300))
        .listen((query) {
      widget.onChanged?.call(query);
    });
  }

  @override
  void dispose() {
    _debounceSub.cancel();
    _searchSubject.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color tonedOutline = context.colors.disabled;

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            onChanged: _searchSubject.add,
            style: context.textTheme.bodyMedium,
            decoration: InputDecoration(
              hintText: context.s.searchbar_hint,
              hintStyle: TextStyle(
                color: tonedOutline,
                fontSize: 14,
              ),
              suffixIcon: SvgPicture.asset(
                Assets.svg.fiSearch,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  tonedOutline,
                  BlendMode.srcIn,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(color: tonedOutline),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(color: tonedOutline),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide(color: context.colors.primaryMain),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        IconButton(
          icon: SvgPicture.asset(
            Assets.svg.fiBellLight,
            colorFilter: ColorFilter.mode(
              context.colors.primaryDark,
              BlendMode.srcIn,
            ),
          ),
          onPressed: () {
            // Handle bell tap
          },
        ),
      ],
    );
  }
}
