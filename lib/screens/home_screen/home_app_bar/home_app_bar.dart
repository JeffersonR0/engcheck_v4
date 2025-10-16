import 'package:engcheck_v4_0_0/const/const_colors.dart';
import 'package:engcheck_v4_0_0/const/const_fonts.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final constFonts = ConstFonts();
    final Color primaryThemeColor = ConstColors().getPrimaryThemeColor();
    final Color secondaryThemeColor = ConstColors().getSecondaryThemeColor();

    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            backgroundColor: secondaryThemeColor,
            child: Icon(Icons.person, color: primaryThemeColor),
          ),
        ),
      ],
      backgroundColor: primaryThemeColor,
      title: Text(
        'Olá, Usuário',
        style: constFonts.getPrimaryFont(color: secondaryThemeColor),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
