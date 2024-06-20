import 'dart:io';

import 'package:core_flutter_exam/utils/global/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'homePage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}
GlobalKey<FormState> formKey=GlobalKey();
TextEditingController txtName=TextEditingController();
TextEditingController txtSur=TextEditingController();
TextEditingController txtGrid=TextEditingController();
TextEditingController txtStan=TextEditingController();
TextEditingController txtName1=TextEditingController();
TextEditingController txtSur1=TextEditingController();
TextEditingController txtGrid1=TextEditingController();
TextEditingController txtStan1=TextEditingController();


ImagePicker imagePicker=ImagePicker();
File? fileImage;

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),

      ),
body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Form(
    key: formKey,
    child: Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          backgroundImage: (fileImage!=null)?FileImage(fileImage!):null
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(onPressed: () async {
                     XFile? xfileImage=await imagePicker.pickImage(source: ImageSource.gallery);
                     setState(() {
                       fileImage=File(xfileImage!.path);

                     });
          }, icon: Icon(Icons.photo,size: 50,)),
            IconButton(onPressed: () async {
              XFile? xfileImage=await imagePicker.pickImage(source: ImageSource.camera);
              setState(() {
                fileImage=File(xfileImage!.path);

              });
            }, icon: Icon(Icons.camera,size: 50,))
          ],
        ),
        ...List.generate(controllerList.length, (index) => Column(
          children: [
            box1(),
            box2(),
            box3(),

          ],
        )
        ),


GestureDetector(
  onDoubleTap: () {

    Navigator.of(context).pushNamed('/next');
  },
  child: Container(
    height: 80,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.greenAccent.shade100
    ),
    child: Center(child: Text('Submit')),
  ),
),
        GestureDetector(
          onDoubleTap: () {
            s=s+txtController.text;
           for(int i=1;i<controllerList.length;i++)
             {
               TextEditingController  txtController=TextEditingController();
             }
          },
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            child: Text('NEX'),
          ),
        ),
        CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white,
            backgroundImage: (fileImage!=null)?FileImage(fileImage!):null
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () async {
              XFile? xfileImage=await imagePicker.pickImage(source: ImageSource.gallery);
              setState(() {
                fileImage=File(xfileImage!.path);

              });
            }, icon: Icon(Icons.photo,size: 50,)),
            IconButton(onPressed: () async {
              XFile? xfileImage=await imagePicker.pickImage(source: ImageSource.camera);
              setState(() {
                fileImage=File(xfileImage!.path);

              });
            }, icon: Icon(Icons.camera,size: 50,))
          ],
        ),
        ...List.generate(controllerList.length, (index) => Column(
          children: [
            box4(),
            box5(),
            box6(),

          ],
        )
        ),


        GestureDetector(
          onDoubleTap: () {

            Navigator.of(context).pushNamed('/next');
          },
          child: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent.shade100
            ),
            child: Center(child: Text('Submit')),
          ),
        ),
        GestureDetector(
          onDoubleTap: () {
            s=s+txtController.text;
            for(int i=1;i<controllerList.length;i++)
            {
              TextEditingController  txtController=TextEditingController();
            }
          },
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            child: Text(''),
          ),
        )
      ],

    ),

  ),

),

      floatingActionButton: FloatingActionButton(
        onPressed:() {




        setState(() {
          addList.add(txtController);
        });

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
String s="";
TextEditingController txtController=TextEditingController();
List controllerList=[
  txtController
];
List addList=[];

Padding box1()
{
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      validator: (value) {
        if(value!.isEmpty)
          {
            return 'value is empty';
          }
        else if(value!.length<=8)
          {
            return 'more then 8';
          }
      },
      onChanged: (value) {

        name=value;
      },
      controller: txtName,

      decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              )
          )
      ),
    ),
  );
}
Padding box2()
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller:txtStan ,

      decoration: InputDecoration(
          labelText: 'Standard',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              )
          )
      ),
    ),
  );
}
Padding box3()
{
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      TextFormField(
        controller: txtGrid,
        decoration: InputDecoration(
            labelText: 'Grid',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.black,

                )
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black
                )
            )
        ),
      ),
    );
}

Padding box4()
{
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'value is empty';
        }
        else if(value!.length<=8)
        {
          return 'more then 8';
        }
      },
      onChanged: (value) {

        name=value;
      },
      controller: txtName,

      decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              )
          )
      ),
    ),
  );
}
Padding box5()
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller:txtStan ,

      decoration: InputDecoration(
          labelText: 'Standard',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.black,

              )
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black
              )
          )
      ),
    ),
  );
}
Padding box6()
{
  return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      TextFormField(
        controller: txtGrid,
        decoration: InputDecoration(
            labelText: 'Grid',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.black,

                )
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black
                )
            )
        ),
      ),
    );
}
String name="nothing";
