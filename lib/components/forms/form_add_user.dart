import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthapp/components/form-elements/custom_dropdown_form_field.dart';
import 'package:healthapp/components/form-elements/custom_text_form_field.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:healthapp/models/result.dart';
import 'package:provider/provider.dart'; // Import the Result class

// Define a custom Form widget.
class FormAddUser extends StatefulWidget {
  const FormAddUser({super.key});

  @override
  FormAddUserFormState createState() {
    return FormAddUserFormState();
  }
}

class FormAddUserFormState extends State<FormAddUser> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _subjectProfileNickNameController =
      TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  bool _isLoading = false;
  bool buttonActive = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: () {
        // Trigger form validation whenever the form changes
        setState(() {
          _formKey.currentState?.validate() == true
              ? buttonActive == true
              : buttonActive == false;
        });
      },
      child: Column(
        children: [
          Text('Add new user profile', style: h6.copyWith(fontWeight: bold)),
          SizedBox(height: 16.0),
          CustomTextFormField(
            labelText: 'Nickname',
            hintText: 'John Doe',
            keyboardType: TextInputType.text,
            controller: _subjectProfileNickNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a nickname';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            labelText: 'Age',
            hintText: '00 years',
            keyboardType: TextInputType.number,
            controller: _ageController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter age';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            labelText: 'Weight',
            hintText: '000 lbs',
            keyboardType: TextInputType.number,
            controller: _weightController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter weight';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          _isLoading
              ? CircularProgressIndicator()
              : FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Material(
                    color: _formKey.currentState?.validate() ?? false
                        ? primary
                        : Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: InkWell(
                      onTap: _formKey.currentState?.validate() == true
                          ? () async {
                              setState(() {
                                _isLoading = true;
                              });
                              if (_formKey.currentState?.validate() == true) {
                                Result result = Result(
                                  id: '1',
                                  subjectProfileNickName:
                                      _subjectProfileNickNameController.text,
                                  subjectProfileId: '',
                                  weightUnit: 'kg',
                                  weight: int.parse(_weightController.text),
                                  sleepQuality: 0,
                                  stressLevel: 0,
                                  age: int.parse(_ageController.text),
                                  cassetteProfile: 0,
                                  deviceId: '',
                                  concentration: '',
                                  measurementDate: DateTime.now().toString(),
                                  measurementTime: TimeOfDay.now().toString(),
                                );
                                bool success =
                                    await Provider.of<ResultNotifier>(context,
                                            listen: false)
                                        .addResult(result);

                                if (success == true) {
                                  setState(() {
                                    _isLoading = false;
                                  });
                                  Navigator.of(context).pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor: white,
                                        content: Text(
                                            style: body,
                                            'New user profile has been saved.')),
                                  );
                                }
                                if (success == false) {
                                  setState(() {
                                    _isLoading = false;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor: white,
                                        content: Text(
                                            style: body,
                                            'There seems to be a problem. Please try again.')),
                                  );
                                }
                                setState(() {
                                  _isLoading = false;
                                });
                              }
                            }
                          : null,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        child: Text(
                          'Save',
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
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
