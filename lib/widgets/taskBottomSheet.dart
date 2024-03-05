import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to/my_theme.dart';

class taskBottomSheet extends StatefulWidget {
  @override
  State<taskBottomSheet> createState() => _taskBottomSheetState();
}

class _taskBottomSheetState extends State<taskBottomSheet> {
  var formkey=GlobalKey<FormState>();
  var date=DateTime.now();
  @override
  Widget build(BuildContext context) {
   String taskTitle='';
   String taskDescribtion='';
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add new Task',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge,),
            Form(
              key: formkey,
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Task title'
                  ),
                  onChanged: (value){
                    taskTitle=value;
                  },
                  validator: (text){
                    if(text==null || text.isEmpty)
                      return 'please enter task title';
                    else
                      return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Task describtion',
                  ),
                  onChanged: (value){
                    taskDescribtion=value;
                  },
                  maxLines: 4,
                  validator: (text){
                    if(text==null || text.isEmpty)
                      return 'please enter task describtion';
                    else
                      return null;
                  },
                ),
              ],
            )),
            SizedBox(height: 30,),
            Text('Select Date',style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){
                showCalender();
              },
                child: Text('${date.day} / ${date.month} / ${date.year}',textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall,)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              addTask();
            }, child: Text('Add',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: MyTheme.whiteColor
              )
              ,))
          ],
        ),
      ),
    );
  }

  void addTask() {
    if(formkey.currentState?.validate()==true){

    }
  }

  void showCalender()async {
   var selectedDate=  await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
   date=selectedDate!;
   setState(() {

   });
  }
}
