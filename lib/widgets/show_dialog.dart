import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog extends StatefulWidget {

  const ShowDialog({ Key? key }) : super(key: key);

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(

        title: const Text("Dialog", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(

              child: const Text("Show Dialog"),
              onPressed: (){

                Get.defaultDialog(

                  title: "Title",
                  titleStyle: const TextStyle(color: Colors.white),
                  middleText: "This is middle text",
                  middleTextStyle: const TextStyle(color: Colors.white),
                  backgroundColor: Colors.purpleAccent,
                  radius: 20,

                  // to customize the middle text
                  content: Row(

                    children: const [

                      CircularProgressIndicator(),
                      SizedBox(width: 15),
                      Expanded(

                        child: Text("Data Loading"),
                      )
                    ],
                  ),

                  // default cancel and confirm action
                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                  //onCancel: (){},
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  //onConfirm: (){},
                  
                  // color for default cancel and confirm button
                  buttonColor: Colors.white,

                  // Customize the default cancel and confirm
                  cancel: TextButton(

                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                    child: const Text(

                      "Cancel", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){},
                  ),

                  confirm: TextButton(

                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                    child: const Text(

                      "Confirm", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){},
                  ),

                  actions: [],
                  barrierDismissible: true
                );
              },
            )
          ],
        ),
      ),
    );
  }
}