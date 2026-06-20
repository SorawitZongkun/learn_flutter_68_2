import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job? _job = Job.developer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          // child: Column(
          //   children: [
          //     TextFormField(decoration: InputDecoration(labelText: "Name")),
          //     TextFormField(
          //       decoration: InputDecoration(labelText: "Age"),
          //       keyboardType: TextInputType.number,
          //     ),
          //     DropdownButtonFormField(
          //       decoration: InputDecoration(labelText: "Job"),
          //       items: Job.values.map((key) {
          //         return DropdownMenuItem(value: key, child: Text(key.title));
          //       }).toList(),
          //       onChanged: (value) {
          //         print("Selected Job: ${value?.title}");
          //       },
          //     ),
          //     SizedBox(height: 20),
          //     FilledButton(
          //       onPressed: () {
          //         // Handle form submission
          //       },
          //       style: FilledButton.styleFrom(
          //         backgroundColor: Colors.pinkAccent,
          //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          //       ),
          //       child: Text(
          //         "Submit",
          //         style: TextStyle(color: Colors.white, fontSize: 20),
          //       ),
          //     ),
          //   ],
          // ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? "";
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter an age";
                    }
                    if (int.tryParse(value) == null) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.tryParse(value!) ?? 20; // ! to assert non-null
                  },
                ),
                DropdownButtonFormField<Job>(
                  decoration: InputDecoration(labelText: "Job"),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.title));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!; // ! to assert non-null
                    });
                  },
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Name: $_name, Age: $_age, Job: ${_job?.title}");

                      // Handle form submission
                      setState(() {
                        people.add(Person(name: _name, age: _age, job: _job!));
                      });

                      // Clear the form after submission
                      _formKey.currentState!.reset();
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
