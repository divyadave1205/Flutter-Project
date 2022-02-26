import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class A extends StatelessWidget {
  A(
      {this.labelText,
      this.hintText,
      this.controller,
      this.validator,
      this.keyboardType,
      this.inputFormatters});

  String? labelText;
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        filled: true,
        fillColor: Colors.purple[100],
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple[900]!,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        labelStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
        hintStyle: TextStyle(
          color: Colors.purple[900],
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFields(),
      debugShowCheckedModeBanner: false,
    );
  }
}

Country? _countries = Country.India;
countryChoice() {
  switch (_countries!) {
    case Country.Afghanistan:
      return "Afghanistan";
    case Country.Japan:
      return "Japan";
    case Country.Europe:
      return "Europe";
    case Country.Ireland:
      return "Ireland";
    case Country.Ingland:
      return "Ingland";
    case Country.Africa:
      return "Africa";
    case Country.India:
      return "India";
    case Country.Pakistan:
      return "Pakistan";
    case Country.Bangladesh:
      return "Bangladesh";
    case Country.France:
      return "France";
    case Country.Russia:
      return "Russia";
    case Country.Australia:
      return "Australia";
  }
}

enum Xender { Male, Female }
enum Country {
  India,
  Australia,
  Africa,
  Russia,
  Japan,
  France,
  Ingland,
  Pakistan,
  Afghanistan,
  Bangladesh,
  Europe,
  Ireland,
}

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final formKey = GlobalKey<FormState>();
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  final fieldText3 = TextEditingController();
  final fieldText4 = TextEditingController();
  Xender? _xenders = Xender.Female;
  RangeValues currentValue = RangeValues(00, 00);
  String data = "";

  String language1 = "English";
  String language2 = "Hindi";
  String language3 = "Gujarati";

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isSwitched = false;
  bool isRanged = false;
  DateTime currentDate = DateTime.now();
  Future<void> selectdate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  clearText() {
    fieldText1.clear();
    fieldText2.clear();
    fieldText3.clear();
    fieldText4.clear();
    data = "";
    isChecked1 = false;
    isChecked2 = false;
    isChecked3 = false;
    isSwitched = false;
    setState(() {
      currentValue = RangeValues(00, 00);
    });
    currentDate = DateTime.now();
  }

  Color enabledBorderColor = Colors.blue;

  submitText(context) {
    setState(
      () {
        A();
        dialougue(context);
        data = "";
        enabledBorderColor = Colors.green;
        if (isSwitched == true) {
          data = data +
              "Account No : " +
              fieldText1.text +
              "\n" +
              "Name : " +
              fieldText2.text +
              "\n" +
              "Password : " +
              fieldText3.text +
              "\n" +
              "Mobile No. : " +
              fieldText4.text +
              "\n" +
              "Country : " +
              countryChoice() +
              "\n" +
              "BirthDate : " +
              "$currentDate"
                  "\n" +
              "Language : " +
              languages() +
              "\n" +
              "Xender : " +
              xender() +
              "\n" +
              "Range : " +
              range();
        }
        if (isSwitched == false) {
          setState(
            () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.purple[100],
                  content: Text(
                    "Please Agree With Terms and Conditions..",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }

  range() {
    String newRange = "";
    if (isRanged == true) {
      newRange = newRange +
          " You Selected a Range From ${currentValue.start.round().toString()} to${currentValue.end.round().toString()} ";
    }
    return newRange;
  }

  dialougue(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Alert!!!",
        style: TextStyle(
          color: Colors.purple[900],
        ),
      ),
      content: Text(
        "Are You Sure to Want Submit Information?",
        style: TextStyle(
          color: Colors.purple[900],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Colors.purple[900],
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Submit",
            style: TextStyle(
              color: Colors.purple[900],
            ),
          ),
        ),
      ],
    );
  }

  xender() {
    switch (_xenders!) {
      case Xender.Female:
        return "Female";

      case Xender.Male:
        return "Male";
    }
  }

  languages() {
    String newLanguage = "";
    if (isChecked1 == true) {
      newLanguage = newLanguage + "," + language1;
    }
    if (isChecked2 == true) {
      newLanguage = newLanguage + "," + language2;
    }
    if (isChecked3 == true) {
      newLanguage = newLanguage + "," + language3;
    }

    return newLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Row(
          children: [
            Text("Account Details"),
          ],
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              width: 370,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.purple,
                  ),
                  SizedBox(height: 10),
                  Text(
                    data == "" ? 'please enter details' : data,
                    style: TextStyle(
                      color: Colors.purple[900],
                    ),
                  ),
                  SizedBox(height: 10),
                  A(
                    controller: fieldText1,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(12),
                    ],
                    hintText: "Account Number",
                    keyboardType: TextInputType.number,
                    labelText: "Enter Your Account number",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter Something...";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  A(
                    controller: fieldText2,
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter Something...";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 10),
                  A(
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    controller: fieldText3,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter Something...";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 10),
                  A(
                    labelText: "Phone No.",
                    hintText: "Enter Your Phone No.",
                    controller: fieldText4,
                    validator: (String? value) {
                      if (value!.length == 10) {
                        return null;
                      } else {
                        return "you Can Enter Only 10 Digits Here...";
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    child: Text("Select your Country"),
                    onPressed: () {
                      setState(() {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialoges();
                            });
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Select your Birth Date...",
                        style: TextStyle(color: Colors.purple),
                      ),
                      IconButton(
                        hoverColor: Colors.purple,
                        onPressed: () {
                          setState(() {
                            selectdate(context);
                          });
                        },
                        icon: Icon(
                          Icons.event,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter The Languages You Know...",
                    style: TextStyle(color: Colors.purple),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.purple,
                        value: isChecked1,
                        onChanged: (bool? check1) {
                          isChecked1 = true;
                          setState(() {
                            isChecked1 = check1!;
                          });
                        },
                      ),
                      Text(
                        language1,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.purple,
                        value: isChecked2,
                        onChanged: (bool? check2) {
                          isChecked2 = true;
                          setState(() {
                            isChecked2 = check2!;
                          });
                        },
                      ),
                      Text(
                        language2,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.purple,
                        value: isChecked3,
                        onChanged: (bool? check3) {
                          isChecked3 = true;
                          setState(() {
                            isChecked3 = check3!;
                          });
                        },
                      ),
                      Text(
                        language3,
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    " Select Your Xender...",
                    style: TextStyle(color: Colors.purple),
                  ),
                  ListTile(
                    title: Text(
                      "Male",
                      style: TextStyle(color: Colors.purple),
                    ),
                    leading: Radio<Xender>(
                      activeColor: Colors.purple,
                      value: Xender.Male,
                      groupValue: _xenders,
                      onChanged: (Xender? value) {
                        setState(
                          () {
                            _xenders = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Female",
                      style: TextStyle(color: Colors.purple),
                    ),
                    leading: Radio<Xender>(
                      activeColor: Colors.purple,
                      value: Xender.Female,
                      groupValue: _xenders,
                      onChanged: (Xender? value) {
                        setState(
                          () {
                            _xenders = value;
                          },
                        );
                      },
                    ),
                  ),
                  Text(
                    "Select The Range.. ",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  RangeSlider(
                    inactiveColor: Colors.grey,
                    activeColor: Colors.purple,
                    values: currentValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      currentValue.start.round().toString(),
                      currentValue.end.round().toString(),
                    ),
                    onChanged: (RangeValues newvalues) {
                      setState(() {
                        isRanged = true;
                        currentValue = newvalues;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "I Agree With Terms And Conditions..",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      Switch(
                        activeColor: Colors.purple,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(
                            () {
                              isSwitched = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Builder(
                        builder: (context) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  if (formKey.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        backgroundColor: Colors.purple[50],
                                        title: Text(
                                          "Confirmation",
                                          style: TextStyle(
                                            color: Colors.purple,
                                          ),
                                        ),
                                        content: Text(
                                          "Are You Sure To Submit Information?",
                                          style: TextStyle(
                                            color: Colors.purple,
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop(true);
                                              submitText(context);
                                            },
                                            child: Text(
                                              "yes",
                                              style: TextStyle(
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop(false);
                                            },
                                            child: Text(
                                              "no",
                                              style: TextStyle(
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).then(
                                      (exit) {
                                        if (exit == null) return;
                                        if (exit) {
                                        } else {}
                                      },
                                    );
                                  }
                                },
                              );
                            },
                            child: Text("Submit"),
                          );
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  titleTextStyle:
                                      TextStyle(color: Colors.purple),
                                  backgroundColor: Colors.purple[50],
                                  title: Text("Confirmation"),
                                  content: Text(
                                      "Are You Sure To Clear Information?"),
                                  contentTextStyle: TextStyle(
                                    color: Colors.purple,
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop(true);
                                        clearText();
                                      },
                                      child: Text(
                                        "yes",
                                        style: TextStyle(
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop(false);
                                      },
                                      child: Text(
                                        "no",
                                        style: TextStyle(
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ).then(
                                (exit) {
                                  if (exit == null) return;
                                  if (exit) {
                                  } else {}
                                },
                              );
                            },
                          );
                        },
                        child: Text("Clear"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Dialoges extends StatefulWidget {
  const Dialoges({Key? key}) : super(key: key);

  @override
  _DialogesState createState() => _DialogesState();
}

class _DialogesState extends State<Dialoges> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SimpleDialog(
        backgroundColor: Colors.purple[50],
        contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 15),
        elevation: 10,
        insetPadding: EdgeInsets.all(12),
        title: Row(
          children: [
            Text(
              "Countries",
              style: TextStyle(color: Colors.purple[800]),
            ),
          ],
        ),
        titlePadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.India,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "India",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Afghanistan,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Afghanistan",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Africa,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Africa",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Europe,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Europe",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Pakistan,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Pakistan",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Bangladesh,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Bangladesh",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Ingland,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Ingland",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Japan,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Japan",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Australia,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Australia",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Russia,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Russia",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.France,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "France",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.purple,
                value: Country.Ireland,
                groupValue: _countries,
                onChanged: (Country? value) {
                  setState(
                    () {
                      _countries = value;
                    },
                  );
                },
              ),
              Text(
                "Ireland",
                style: TextStyle(color: Colors.purple[800]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
