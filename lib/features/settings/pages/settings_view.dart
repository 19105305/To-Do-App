import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class SettingsView extends StatelessWidget {
   SettingsView({super.key});

  final List<String> themeList = [
    "Dark",
    "Light",
  ];
  final List<String> languageList = [
    "English",
    "عربي",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
   // var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);
    var mediaQuery=MediaQuery.of(context).size;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height*0.2,
          color: theme.primaryColor,
          padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 40,
          ),
          child: Container(
            child: Text(
              "Settings",

              style: vm.isDark() ?
              theme.textTheme.titleLarge?.copyWith(color: theme.primaryColorDark ,fontWeight: FontWeight.w700) : theme.textTheme.titleLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // local.language,
                "Language",
                style: vm.isDark() ? theme.textTheme.bodySmall?.copyWith(color: Colors.white ,fontWeight: FontWeight.w700) : theme.textTheme.bodySmall?.copyWith(color: Colors.black,fontWeight: FontWeight.w700),//
              ),
              const SizedBox(height: 10),
              CustomDropdown<String>(
                items: languageList,
                // initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
                initialItem:"English",
                decoration: CustomDropdownDecoration(
                  closedBorder: Border.all(color: theme.primaryColor),
                  expandedSuffixIcon: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: theme.primaryColor,
                  ),
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: theme.primaryColor,
                  ),
                  closedFillColor: vm.isDark() ? Color(0xFF141922) : Colors.white,
                  expandedFillColor: vm.isDark() ? Color(0xFF141922) : Colors.white,
                  headerStyle:theme.textTheme.bodySmall?.copyWith(color: theme.primaryColor ,fontWeight: FontWeight.w400),
                  listItemStyle: theme.textTheme.bodySmall?.copyWith(color: theme.primaryColor ,fontWeight: FontWeight.w400),
                ),
                onChanged: (value) {
                  if (value == "English") {
                    // vm.changeLanguage("en");
                  } else if (value == "عربي") {
                    // vm.changeLanguage("ar");
                  }
                },
              ),
              const SizedBox(height: 40),
              Text(
                "Mode",
                // local.theme,
                style: vm.isDark() ? theme.textTheme.bodySmall?.copyWith(color: Colors.white ,fontWeight: FontWeight.w700) : theme.textTheme.bodySmall?.copyWith(color: Colors.black,fontWeight: FontWeight.w700),//
              ),
              const SizedBox(height: 10),
              CustomDropdown<String>(
                items: themeList,
                initialItem: vm.isDark() ? "Dark" : "Light",
                decoration: CustomDropdownDecoration(
                  closedBorder: Border.all(
                    color: theme.primaryColor
                  ),

                  expandedSuffixIcon: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: theme.primaryColor,
                  ),
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: theme.primaryColor,
                  ),
                  closedFillColor: vm.isDark() ? Color(0xFF141922) : Colors.white,
                  expandedFillColor: vm.isDark() ? Color(0xFF141922) : Colors.white,

                  headerStyle:theme.textTheme.bodySmall?.copyWith(color: theme.primaryColor ,fontWeight: FontWeight.w400),
                  listItemStyle: theme.textTheme.bodySmall?.copyWith(color: theme.primaryColor ,fontWeight: FontWeight.w400),
                ),
                onChanged: (value) {
                  if (value == "Light") {
                    vm.changeTheme(ThemeMode.light);
                  } else if (value == "Dark") {
                    vm.changeTheme(ThemeMode.dark);
                  }
                },
              )
            ],
          ),
        ),

      ],
    );
  }
}
