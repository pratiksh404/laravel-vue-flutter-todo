import 'package:flutter/material.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool reminder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              // Create New Task Text Field
                Text(
                  "Create New Task",
                  style: TextStyle(
                    fontSize: 50.0,
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[800],
                  ),
                ),

              /// Container for TextField
              TextField(
                 style: TextStyle(
                   fontSize: 24.0,
                   fontWeight: FontWeight.w500,
                   color: Colors.grey[800],
                 ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[100]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey[100]),
                  ),
                  hintText: "Task Name",
                  hintStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800],
                  ),
                ),
              ),

              SizedBox(height: 20.0,),

              /// Container for timing tray 1
              Container(
                child: Row(
                  children: <Widget>[
                    // Container for Icons
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromRGBO(255, 240, 240, 1)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.redAccent,
                      ),
                    ),

                    Spacer(),

                    // For Date Text
                    Text(
                        "Thursday 13, August 2020",
                    style: TextStyle(
                      fontSize: 18.0,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700]
                    ),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 16.0,),

              /// Container for timing tray 2
              Container(
                child: Row(
                  children: <Widget>[
                    // Container for Icons
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(255, 250, 240, 1)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.alarm,
                        color: Colors.orangeAccent,
                      ),
                    ),

                    SizedBox(width: 24,),

                    // For Time Text
                    Text(
                      "1:00 - 3:00 PM",
                      style: TextStyle(
                          fontSize: 18.0,
                          height: 1.2,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700]
                      ),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 16.0,),

              /// Container for Task Category
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey[100]
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    /// Container for Icons
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(255, 250, 240, 1)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.web_asset,
                        color: Colors.orangeAccent,
                      ),
                    ),

                    SizedBox(width: 24,),

                    /// For Time Text
                    Text(
                      "Work",
                      style: TextStyle(
                          fontSize: 18.0,
                          height: 1.2,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700]
                      ),
                    ),

                    Spacer(),

                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0,),

              /// Container for reminder
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.blueGrey[100]
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    /// Container for Icons
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(240, 235, 255, 1)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.alarm_on,
                        color: Colors.orangeAccent,
                      ),
                    ),

                    SizedBox(width: 24,),

                    /// For Time Text
                    Text(
                      "Reminder",
                      style: TextStyle(
                          fontSize: 18.0,
                          height: 1.2,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700]
                      ),
                    ),

                    Spacer(),

                    /// Reminder Switch
                    Switch(
                      onChanged: (value) {
                        setState(() {
                            reminder = value;
                        });
                      },
                      value: reminder,
                      activeColor: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0,),

              /// Button For Creating Task
              Container(
                width: double.infinity,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  color: Colors.black,
                  child: Text(
                      "CREATE TASK",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0,
                    color: Colors.white
                  ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
