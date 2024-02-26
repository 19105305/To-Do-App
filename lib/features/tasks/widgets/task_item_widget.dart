import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      width: mediaQuery.width,
      height: 115,
      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      decoration: BoxDecoration(
        color: vm.isDark() ? Color(0xFF141922) : Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 90,
            decoration: BoxDecoration(color: theme.primaryColor,borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Play Basket Ball",
              style: theme.textTheme.bodyMedium?.copyWith(color: theme.primaryColor),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.alarm_add_rounded,size: 20,
                      color: vm.isDark() ? Colors.white : Colors.black ,
                  ),
                  SizedBox(width: 5,),
                  Text("10:30 am",
                    style:
                    theme.textTheme.bodySmall?.
                    copyWith(fontWeight: FontWeight.w500,
                    color: vm.isDark() ? Colors.white:Colors.black
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20) ,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
              child: Icon(Icons.check_rounded, size: 38,color: Colors.white,))
        ],
      ),

    );
  }
}
