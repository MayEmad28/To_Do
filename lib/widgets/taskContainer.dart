import 'package:flutter/material.dart';
import '../my_theme.dart';
class taskContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: 330,
          height: 100,
          decoration: BoxDecoration(
              color: MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: VerticalDivider(color: MyTheme.primaryColor,thickness: 3,),
              ),
              Expanded(
                child: Text('Task Title',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: MyTheme.blackColor,
                  fontSize: 18
                ),),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 34,
                width: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyTheme.primaryColor,
                ),
                child: Icon(Icons.check,size: 30,color: MyTheme.whiteColor,),
              )

            ],
          ),
        )
      ],
    );
  }
}
