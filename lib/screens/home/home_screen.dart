import 'package:flutter/material.dart';
import 'package:to/my_theme.dart';
import 'package:to/screens/settings/settings.dart';
import 'package:to/screens/task_list/tasks.dart';

import '../../widgets/taskBottomSheet.dart';

class home_screen extends StatefulWidget {
  static const String routeName='home_screen';

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list,size: 30,),label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,),label: 'Settings'),
          ],
        ),
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(side: BorderSide(width: 4,color: MyTheme.whiteColor),borderRadius: BorderRadius.circular(100)),
        onPressed: (){
          showTaskBottomSheet();
        },
        child: Icon(Icons.add,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  List<Widget>tabs=[
    tasks(),
    settings()
  ];
   void showTaskBottomSheet() {
    showModalBottomSheet(context: context, builder: (context)=>taskBottomSheet(),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
          side:BorderSide(
            color: MyTheme.whiteColor
          )
    ),
    );
  }
}
