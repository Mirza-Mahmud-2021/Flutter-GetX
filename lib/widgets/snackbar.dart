import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarClass extends StatefulWidget {

  const SnackBarClass({ Key? key }) : super(key: key);

  @override
  State<SnackBarClass> createState() => _SnackBarClassState();
}

class _SnackBarClassState extends State<SnackBarClass> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.redAccent,
        title: const Text("SnackBar", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(

              child: const Text("Show SnackBar"),
              onPressed: (){

                Get.snackbar(

                  "SnackBar",
                  "This is snackbar using getx",
                  colorText: Colors.white,
                  backgroundColor: Colors.green,

                  // while we using border color ensure using border width otherwise error will generate
                  borderColor: Colors.black,
                  borderWidth: 1.5,
                  borderRadius: 20,
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(20.0),
                  snackPosition: SnackPosition.BOTTOM,
                  animationDuration: const Duration(milliseconds: 2000),
                  backgroundGradient: const LinearGradient(

                    colors: [Colors.purple, Colors.purpleAccent]
                  ),

                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  forwardAnimationCurve: Curves.bounceInOut,
                  duration: const Duration(milliseconds: 5000),
                  reverseAnimationCurve: Curves.bounceInOut,
                  icon: const Icon(Icons.send, color: Colors.white),
                  shouldIconPulse: false,
                  onTap: (value){},
                  overlayBlur: 2.0,

                  // userInputForm: Form(

                  //   child: Row(

                  //     children: const [

                  //       Flexible(child: TextField()),
                  //       SizedBox(width: 10),
                  //       Flexible(child: TextField()),
                  //     ],
                  //   ),
                  // ),

                  mainButton: TextButton(

                    onPressed: (){},
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                    child: const Icon(Icons.abc),
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}