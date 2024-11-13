import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/date_picker_viewmodel.dart';

class DatePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<DatePickerViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('DatePicker with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<DatePickerViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.selectedDate != null
                        ? "Selected Date: ${viewModel.selectedDate!.toLocal().toString().split(' ')[0]}"
                        : "No Date Selected",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.selectDate(context);
                    },
                    child: Text("Pick a Date"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
