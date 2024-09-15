import 'package:flutter/material.dart';
import 'package:healthapp/components/form-elements/custom_dropdown_form_field.dart';
import 'package:healthapp/components/form-elements/custom_text_form_field.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

// Define a custom Form widget.
class FormDevice extends StatefulWidget {
  const FormDevice({super.key});

  @override
  FormDeviceFormState createState() {
    return FormDeviceFormState();
  }
}

class FormDeviceFormState extends State<FormDevice> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedDevice;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: () {
        // Trigger form validation whenever the form changes
        setState(() {});
      },
      child: Column(
        children: [
          CustomDropdownFormField<String>(
            labelText: 'Select olo reader device',
            hintText: 'Select device',
            items: [
              DropdownMenuItem(value: '0', child: Text('My Device')),
            ],
            value: _selectedDevice,
            validator: (value) {
              if (value == null) {
                return 'Please select a device';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                _selectedDevice = value;
              });
            },
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          Text(
            'Or pair a new device',
            style: body,
          ),
          SizedBox(height: 20),
          Material(
            color: primary,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  'Bluetooth settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
