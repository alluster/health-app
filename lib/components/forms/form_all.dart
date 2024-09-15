import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/components/form-elements/custom_dropdown_form_field.dart';
import 'package:healthapp/components/form-elements/custom_text_form_field.dart';
import 'package:healthapp/components/forms/form_add_user.dart';
import 'package:healthapp/screens/create_result/take_sample_screen.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

// Define a custom Form widget.
class FormAll extends StatefulWidget {
  const FormAll({super.key});

  @override
  FormAllFormState createState() {
    return FormAllFormState();
  }
}

class FormAllFormState extends State<FormAll> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cassetteController = TextEditingController();

  String? _selectedDevice;
  String? _selectedUser;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      // autovalidateMode: ,
      onChanged: () {
        // Trigger form validation whenever the form changes
        setState(() {});
      },
      child: Column(
        children: [
          CustomDropdownFormField<String>(
            labelText: 'Select device',
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
          // Text('Or pair new',
          //     style: body.copyWith(fontWeight: bold, color: brightBlue)),
          // SizedBox(height: 40),
          CustomDropdownFormField<String>(
            labelText: 'Select a user',
            hintText: 'Select user',
            items: [
              DropdownMenuItem(value: 'John', child: Text('Doe')),
            ],
            value: _selectedUser,
            validator: (value) {
              if (value == null) {
                return 'Please select a user';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                _selectedUser = value;
              });
            },
          ),
          SizedBox(height: 16.0),
          InkWell(
              child: Text('Add new a new user profile',
                  style: h6.copyWith(fontWeight: bold)),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        scrollable: true,
                        backgroundColor: white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        surfaceTintColor: white,
                        title: null,
                        content: FormAddUser()));
              }),
          SizedBox(height: 16.0),

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Material(
                color:
                    _formKey.currentState?.validate() == true ? primary : gray,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: _formKey.currentState?.validate() == true
                      ? () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TakeSampleScreen(),
                              ));
                        }
                      : null,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Next',
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
            ),
          ),
        ],
      ),
    );
  }
}
