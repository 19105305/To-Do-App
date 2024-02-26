 import 'dart:html';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/tasks/widgets/task_item_widget.dart';

import '../../settings_provider.dart';

class TaskView extends StatefulWidget {


  TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  DateTime focusTime=DateTime.now();

   @override
   Widget build(BuildContext context) {
     var theme = Theme.of(context);
     // var local = AppLocalizations.of(context)!;
     var vm = Provider.of<SettingsProvider>(context);
     var mediaQuery=MediaQuery.of(context).size;

     return Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(bottom: 60),
           child: Stack(
            alignment: Alignment(0, 2.0),
            clipBehavior: Clip.none ,
           children: [
             Container(
               width: mediaQuery.width,
               height: mediaQuery.height*0.2,
               color: theme.primaryColor,
               padding: EdgeInsets.symmetric(
                 horizontal: 20.0,
                 vertical: 40,
               ),
               child: Container(
                 child: Text(
                   "To Do List",
                   style: vm.isDark() ?
                   theme.textTheme.titleLarge?.copyWith(color: theme.primaryColorDark ,fontWeight: FontWeight.w700) : theme.textTheme.titleLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.w700),

                 ),
               ),
             ),
           EasyInfiniteDateTimeLine(
               firstDate: DateTime(2024),
               focusDate: focusTime,
               lastDate: DateTime(2025),
               showTimelineHeader: false,
               timeLineProps: EasyTimeLineProps(
                   separatorPadding: 20
               ),
               dayProps: EasyDayProps(
                 inactiveDayStyle: DayStyle(
                   monthStrStyle:theme.textTheme.displayLarge?.
                   copyWith(color:
                   vm.isDark()?Colors.white :Colors.black ),
                  /* TextStyle(
                     color: vm.isDark()?Colors.white :Colors.black,
                   ),*/
                   dayStrStyle: theme.textTheme.displayLarge?.
                   copyWith(color:
                   vm.isDark()?Colors.white :Colors.black ),
                   dayNumStyle:theme.textTheme.displayLarge?.
                   copyWith(color:
                   vm.isDark()?Colors.white :Colors.black ),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: vm.isDark()?Color(0xFF141922) :Colors.white,
                   ),
                 ),
                 todayStyle: DayStyle(
                     monthStrStyle:theme.textTheme.displayLarge?.
                     copyWith(color:
                     vm.isDark()?Colors.white :Colors.black ),
                     dayStrStyle: theme.textTheme.displayLarge?.
                     copyWith(color:
                     vm.isDark()?Colors.white :Colors.black ),
                     dayNumStyle:theme.textTheme.displayLarge?.
                     copyWith(color:
                     vm.isDark()?Colors.white :Colors.black ),
                     decoration: BoxDecoration(
                       color: vm.isDark()?Color(0xFF141922) :Colors.white,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: theme.primaryColor,width: 2),
                     )
                 ),
                 activeDayStyle: DayStyle(
                   dayNumStyle: theme.textTheme.displayLarge?.copyWith(
                     color: theme.primaryColor,
                   ),
                   dayStrStyle: theme.textTheme.displayLarge?.copyWith(
                     color: theme.primaryColor,
                   ),
                   monthStrStyle: theme.textTheme.displayLarge?.copyWith(
                     color: theme.primaryColor,
                   ),
                   decoration: BoxDecoration(
                    color: vm.isDark()?Color(0xFF141922) :Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.black38),
                   ),
                 ),


                 height: 100,

               ),
               onDateChange: (selectedDate) {
                 setState(() {
                   focusTime = selectedDate;
                 });

               },
             ),
           ]),
         ),
        // SizedBox(height: 60),
         Expanded(
             child:
         ListView(
           children: [
             TaskItemWidget(),
             TaskItemWidget(),
             TaskItemWidget(),
             TaskItemWidget(),
             TaskItemWidget(),
             TaskItemWidget(),
             TaskItemWidget(),

           ],
         )
         ),
       ],
     );
   }
}
