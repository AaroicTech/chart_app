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
              padding: const EdgeInsets.only(right: 160),
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
            const SizedBox(height: 20),
            Container(
              height: 280,
              width: 100,
              color: transparent,
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
                        _selectedDate == null
                            ? 'No date chosen!'
                            : '< March 2021 >: ${DateFormat.yMMMd().format(_selectedDate!)}',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  //Number of walks
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Number of walks',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black),
                        ),
                        const SizedBox(width: 110),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: pink,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text('-'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text('4'),
                        const SizedBox(width: 20),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: deepOrange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              '+',
                              style: textStyle11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Number of walking  time
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Walking time',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black),
                        ),
                        const SizedBox(width: 220),
                        Text('7:30'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),

                  // Walk duration
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Walk duration',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: black),
                        ),
                        const SizedBox(width: 120),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: pink,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text('-'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text('45min'),
                        const SizedBox(width: 10),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: deepOrange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text('+'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45),

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
          ],
        ),
      ),
    );
  }
}
