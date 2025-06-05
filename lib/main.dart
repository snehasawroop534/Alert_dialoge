import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Delete Account"),
                    content: Text("Are You Sure that You want to delete your account"),
                    actions: [

                      ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("No")),
                      ElevatedButton(onPressed: () {
                        Fluttertoast.showToast(msg: "Account deleted successfully");
                        Navigator.pop(context);
                      }, child: Text("Yes")),
                    ],
                  );
                },);
              }, child: Text("Delete Account"))


              // ElevatedButton(onPressed: () {
              //   showDialog(context: context, builder: (context) {
              //     return Dialog(
              //       shape: BeveledRectangleBorder(borderRadius:BorderRadius.circular(30) ),
              //       backgroundColor: Colors.blue,
              //       child: Column(
              //         children: [
              //           Text("LogOut"),
              //           Text("Are you sure Logout"),
              //           Row(
              //             children: [
              //
              //               ElevatedButton(onPressed: () {
              //                 Navigator.pop(context);
              //               }, child: Text("No")),
              //
              //               ElevatedButton(onPressed: () {
              //                 Fluttertoast.showToast(msg: "Logout Successfully");
              //                 Navigator.pop(context);
              //               }, child: Text("yes")),
              //
              //             ],
              //           )
              //         ],
              //       ),
              //     );
              //  },);
             // }, child: Text("LogOut"))

            ],
          ),
      ),
    );
  }
}

