import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'page1add_control.dart';

class Page1Add extends StatefulWidget {
  const Page1Add({Key? key}) : super(key: key);

  @override
  _Page1AddState createState() => _Page1AddState();
}

class _Page1AddState extends State<Page1Add> {
  final controller = Page1AddController();

  final _dateFormatter = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Financial Data'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.dateUserController,
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: _dateFormatter.format(DateTime.now()),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
                if (pickedDate != null) {
                  controller.dateUserController.text = _dateFormatter.format(pickedDate);
                }
              },
            ),
            TextField(
              controller: controller.amountFinancialController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.addData();
              },
              child: Text('Add'),

            ),
          ],
        ),
      ),
    );
  }
}
