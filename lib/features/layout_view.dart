import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/features/settings_provider.dart';

class LayoutView extends StatelessWidget {
  static const String routename="layoutview";
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm=Provider.of<SettingsProvider>(context);
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child:Icon(Icons.add,size: 32,color: Colors.white ,)
      ),
      //backgroundColor: Color(0xFFDFECDB),
      body: vm.screens[vm.currentIndex],
     bottomNavigationBar: BottomAppBar(
       shape: CircularNotchedRectangle(),
       elevation: 0,
       notchMargin: 12,
       padding: EdgeInsets.zero,
       child: BottomNavigationBar(
         currentIndex:  vm.currentIndex,
         onTap: vm.changeIndex,
         items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.list,),
           label:  "Tasks"
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.settings_outlined,),
             label:  "Settings"
         ),
       ],
       ),
     ),
    );
  }
}
