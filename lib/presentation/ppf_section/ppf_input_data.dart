import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';

class PPFInputData extends StatefulWidget {
  const PPFInputData({super.key});

  @override
  State<PPFInputData> createState() => _PPFInputDataState();
}

class _PPFInputDataState extends State<PPFInputData> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: dateInput,
            autofocus: false,
            autocorrect: false,
            maxLines: 1,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: kEnterDate, //babel text
              prefixIcon: Icon(Icons.calendar_today), //prefix iocn
              //label style
            ),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2100));

              if (pickedDate != null) {
                String formattedDate =
                    DateFormat(kDateFormat).format(pickedDate);
                setState(() {
                  dateInput.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {}
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            autofocus: false,
            autocorrect: false,
            keyboardType: TextInputType.number,
            maxLines: 1,
            maxLength: 5,
            decoration: InputDecoration(
              counterText: kEmpty,
              prefixText: kRsSymbol,
              labelText: kEnterAmount, //babel text
              prefixIcon: Icon(Icons.money), //prefix iocn
              //label style
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            child: const Text(kSave),
          )
        ],
      ),
    );
  }
}
