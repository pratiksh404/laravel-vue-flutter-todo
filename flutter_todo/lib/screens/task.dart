import 'package:flutter/material.dart';
import 'package:todo/screens/create_task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
           width: double.infinity,
           child: Row(
             children: <Widget>[
               /// Container for Content
               Expanded(
                 child: Container(
                   padding: const EdgeInsets.all(32.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                         "Task List",
                         style: TextStyle(
                           fontSize: 20.0,
                           height: 1.2,
                           letterSpacing: 1.0,
                           fontWeight: FontWeight.w900,
                           color: Colors.black,
                         ),
                       ),
                       
                       SizedBox(height: 4.0,),

                       /// Work Panel
                       Row(
                     children: <Widget>[
                       /// Work Text
                       Text(
                         "WORK",
                         style: TextStyle(
                           fontSize: 40.0,
                           height: 1.2,
                           fontWeight: FontWeight.w700,
                           color: Colors.grey[800],
                         ),
                       ),

                       Spacer(),

                       IconButton(
                         icon: Icon(Icons.edit),
                         onPressed: () {},
                         color: Colors.black,
                       ),
                     ],
                   ),

                       /// List of all Tasks
                       Expanded(
                         child: ListView.separated(
                             itemBuilder: (context,index){
                               return Container(
                                 padding: const EdgeInsets.all(12.0),
                                 decoration: BoxDecoration(
                                   border: Border.all(
                                     color: Colors.blueGrey[100]
                                   ),
                                   color: index == 1 ? Colors.purple[400] : Colors.transparent,
                                 ),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     /// Task Text
                                     Text(
                                       "My First Task",
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 16.0,
                                         color: Colors.grey[800],
                                       ),
                                     ),

                                     /// Task Detail

                                     Row(
                                       children: <Widget>[
                                         Text(
                                           "15th August 2020",
                                           style: TextStyle(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 10.0,
                                             color: index == 1 ? Colors.white : Colors.grey[800],
                                           ),
                                         ),
                                         Spacer(),
                                         Text(
                                           "8 A.M",
                                           style: TextStyle(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 10.0,
                                             color: index == 1 ? Colors.white : Colors.grey[800],
                                           ),
                                         ),

                                       ],
                                     ),

                                   ],
                                 ),
                               );
                             },
                             separatorBuilder: (context,index) => Divider(height: 16, color: Colors.transparent,),
                             itemCount: 6
                         ),
                       ),


                       /// Button for adding new task
                       Container(
                         width: double.infinity,
                         child: FlatButton(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           padding: const EdgeInsets.symmetric(vertical: 16.0),
                           color: Colors.purple[400],
                           child: Text(
                             "ADD NEW TASK",
                             style: TextStyle(
                                 fontSize: 18.0,
                               color: Colors.white,
                               fontWeight: FontWeight.w900
                             ),
                           ),
                           onPressed: () {
                             Navigator.push(context,MaterialPageRoute(
                               builder: (context) => CreateTaskScreen()
                             ));
                           },
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
                SizedBox(height: 12.0,),
                /// Container for task categories
               Container(
                 width: MediaQuery.of(context).size.width*0.22,
                 color: Colors.black,
                 height: double.infinity,
                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                 child: Column(
                   children: <Widget>[
                     /// Menu Button
                     IconButton(
                       icon: Icon(
                         Icons.menu,
                         color: Colors.white,
                       ),
                     ),

                     Spacer(),

                     ///Container for Cart Button
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.orangeAccent,
                       ),
                       padding: const EdgeInsets.all(16.0),
                       child: Center(
                         child: Text(
                           "W",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.w900,
                             fontSize: 24.0
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: 16.0,),

                     ///Container for Cart Button
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey[800],
                       ),
                       padding: const EdgeInsets.all(16.0),
                       child: Center(
                         child: Text(
                           "F",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w900,
                               fontSize: 24.0
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: 16.0,),

                     ///Container for Cart Button
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey[800],
                       ),
                       padding: const EdgeInsets.all(16.0),
                       child: Center(
                         child: Text(
                           "S",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w900,
                               fontSize: 24.0
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: 16.0,),

                     ///Container for Cart Button
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey[800],
                       ),
                       padding: const EdgeInsets.all(16.0),
                       child: Center(
                         child: Text(
                           "P",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w900,
                               fontSize: 24.0
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: 16.0,),

                     Spacer(),

                     /// Calendar Button
                     IconButton(
                       icon: Icon(
                         Icons.calendar_today,
                         color: Colors.white,
                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),
         ),
    );
  }
}
