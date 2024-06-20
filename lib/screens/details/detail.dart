import 'package:core_flutter_exam/screens/homePage/homePage.dart';
import 'package:core_flutter_exam/utils/global/global.dart';
import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.greenAccent.shade100
              ),
              child: Column(

                children: [
                  SizedBox(
                    height: 20,
                  ),
                 Row(
                   children: [
                    CircleAvatar(
                      backgroundImage: FileImage(fileImage!),
                      radius: 65,
                    ),
                   Column(
                     children: [
                       Text('Student Name: ${txtName.text}',style: TextStyle(
                           fontSize: 16
                       ),),
                       Text('Student Standard: ${txtStan.text}',style: TextStyle(
                           fontSize: 16
                       ),),
                       Text('Student Gird: ${txtGrid.text}',style: TextStyle(
                           fontSize: 16
                       ),)
                       ,
                       IconButton(onPressed: () {
               studentList.remove(txtController);
                       }, icon: Icon(Icons.delete))
                     ],
                   )
                   ],
                 )

                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.greenAccent.shade100
              ),
              child: Column(

                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: FileImage(fileImage!),
                        radius: 65,
                      ),
                      Column(
                        children: [
                          Text('Student Name: ${txtName.text}',style: TextStyle(
                              fontSize: 16
                          ),),
                          Text('Student Standard: ${txtStan.text}',style: TextStyle(
                              fontSize: 16
                          ),),
                          Text('Student Gird: ${txtGrid.text}',style: TextStyle(
                              fontSize: 16
                          ),)
                          ,
                          IconButton(onPressed: () {
                            studentList.remove(txtController);
                          }, icon: Icon(Icons.delete))
                        ],
                      )
                    ],
                  )

                ],
              ),
            ),
          )
    ],
      ),
    );
  }
}
// FileImage(!fileImage)