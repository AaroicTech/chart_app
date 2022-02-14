import 'package:chart_app/screens/home_screen/payment.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? _selectedDate;

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 160),
              child: Column(
                children: const [
                  Text(
                    'Walking planning',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Fill in some details',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.41,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        child: Text(
                          'Select dates',
                          style: textStyle1,
                        ),
                        onPressed: _pickDateDialog,
                      ),
                      Text(
                        '< March 2021 >',
                        style: textStyle1,
                      ),
                      // Text(
                      //   _selectedDate == null
                      //       ? 'No date chosen!'
                      //       : '< March 2021>: ${DateFormat.yMMMd().format(_selectedDate!)}',
                      // ),
                    ],
                  ),
                  Container(
                    height: 260,
                    width: 100,
                    color: transparent,
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                //color: black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Text(
                        'Number of walks',
                        style: textStyle3,
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color: red,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Text(
                        'Walking time',
                        style: textStyle3,
                      ),
                      trailing: Text(
                        '7:30',
                        style: textStyle1,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Text(
                        'Walk duration',
                        style: textStyle3,
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color: red,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: textStyle11,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Payment_screen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              color: deepOrange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Pay',
                                style: textStyle11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
