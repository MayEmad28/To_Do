import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to/my_theme.dart';

import '../../widgets/taskContainer.dart';
class tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2026, 2, 20),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: MyTheme.blackColor,
          dayColor: MyTheme.blackColor,
          activeDayColor: Colors.white,
          activeBackgroundDayColor:MyTheme.primaryColor,
          locale: 'en',
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context,index)=>taskContainer(),
            itemCount: 30,
          ),
        ),
      ],
    );
  }
}
