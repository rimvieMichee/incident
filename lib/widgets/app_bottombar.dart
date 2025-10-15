import 'package:flutter/material.dart';
import 'package:incident/helpers/extensions/string.dart';
import 'package:incident/helpers/utils/ui_mixins.dart';
import 'package:incident/helpers/storage/local_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incident/helpers/constant/images.dart';

class AppBottomBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const AppBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar>
    with SingleTickerProviderStateMixin, UIMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: contentTheme.bottomBarColor,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBottomBarCard(
            index: 0,
            selectedIcon: Images.dashboard2,
            unSelectedIcon: Images.dashboard,
            title: "home",
          ),
          buildBottomBarCard(
            index: 1,
            selectedIcon: Images.setting2,
            unSelectedIcon: Images.setting,
            title: "setting",
          ),
        ],
      ),
    );
  }

  Widget buildBottomBarCard({
    required int index,
    required String selectedIcon,
    required String unSelectedIcon,
    required String title,
    bool elevated = false,
  }) {
    final bool isSelected = widget.selectedIndex == index;

    return GestureDetector(
      onTap: () => widget.onTabSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: elevated ? 0 : 5),
          Container(
            padding: elevated ? const EdgeInsets.all(8) : EdgeInsets.zero,
            decoration: elevated && isSelected
                ? BoxDecoration(
                    color: contentTheme.primary,
                    borderRadius: BorderRadius.circular(16),
                  )
                : null,
            child: Image.asset(
              isSelected ? selectedIcon : unSelectedIcon,
              width: 28,
              height: 28,
              color: isSelected
                  ? null
                  : LocalStorage.getTheme() == "Dark"
                      ? contentTheme.white
                      : contentTheme.k61646B,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title.tr(),
            style: TextStyle(
              fontSize: 12,
              color: isSelected
                  ? contentTheme.onPrimary
                  : LocalStorage.getTheme() == "Dark"
                      ? contentTheme.white
                      : contentTheme.k61646B,
              fontFamily: GoogleFonts.workSans().fontFamily,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
