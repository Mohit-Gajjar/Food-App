import 'package:flutter/material.dart';
class RdUser extends StatefulWidget {
  @override
  _RdUserState createState() => _RdUserState();
}
String valueChoose1;
String valueChoose2;
String valueChoose3;
String valueChoose4;
String valueChoose5;
List listItems = [
  "None",
  "Pani Puri (20/-)",
  "Ragda pani puri (20/-) ",
  "Rajwadi Pani Puri ( 20/-)",
  "Dahi Puri (30/-)",
  "Sev Puri (30/-)",
  "Chanti Puri (30/-)",
  "Jain Dahi Puri ( 30/-)",
  "Jain Sev Puri ( 30/-)",
  "Jain Chantni Puri ( 30/-)",
  "Bombay Sev Puri (30/-)",
  "Cheese Dahi Puri (50/-)",
  "Cheese Sev Puri (50/-)",
  "Cheese Chanti Puri (50/-)",
  "Bombay Cheez sev Puri (50/-)",
  "Samosa (20/-)",
  "Samosa Chaat (30/-)",
  "Onion Kachori (20/-)",
  "Dal Kachori (20/-)",
  "Basket Chaat (30/-)",
  "Cheese Basket (50/-)",
  "Onion Kachori Chaat (30/-)",
  "Dal Kachori Chaat (30/-)",
  "Papdi  Chaat (30/-)",
  "Delhi Chaat (30/-)",
  "Ragda Pettice (30/-)",
  "Aloo tikki (30/-)",
  "Regular Bhel (30/-)",
  "Chopati Bhel (30/-)",
  "Bombay Bhel (30/-)",
  "Spicy Bhel (30/-)",
  "Jani Bhel (30/-)",
  "Schezwan bhel (30/-)",
];
class _RdUserState extends State<RdUser> {
 int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  int _counter5 = 0;

  void inCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void inCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void inCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void inCounter4() {
    setState(() {
      _counter4++;
    });
  }

  void inCounter5() {
    setState(() {
      _counter5++;
    });
  }

  void decCounter1() {
    setState(() {
      if (_counter1 != 0) {
        _counter1--;
      }
    });
  }

  void decCounter2() {
    setState(() {
      if (_counter2 != 0) {
        _counter2--;
      }
    });
  }

  void decCounter3() {
    setState(() {
      if (_counter3 != 0) {
        _counter3--;
      }
    });
  }

  void decCounter4() {
    setState(() {
      if (_counter4 != 0) {
        _counter4--;
      }
    });
  }

  void decCounter5() {
    setState(() {
      if (_counter5 != 0) {
        _counter5--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0xff161622),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: 10),
        Container(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff2B276D),
                    border: Border.all(
                      color: Color(0xff161622),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        DropdownButton(
                          hint: Text(
                            'Select Item',
                            style: TextStyle(color: Colors.amber, fontSize: 18),
                          ),
                          dropdownColor: Color(0xff161622),
                          isExpanded: true,
                          iconSize: 36,
                          value: valueChoose1,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose1 = newValue;
                            });
                          },
                          items: listItems.map(
                            (valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(
                                  valueItem,
                                  style: TextStyle(color: Colors.amber),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              onPressed: inCounter1,
                              color: Color(0xffB00D08),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 20),
                              ),
                              shape: CircleBorder(),
                            ),
                            Text(
                              '$_counter1',
                              style: TextStyle(color: Colors.white),
                            ),
                            RaisedButton(
                              onPressed: decCounter1,
                              color: Color(0xffB00D08),
                              child: Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 30),
                              ),
                              shape: CircleBorder(),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                        SizedBox(height: 5)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2B276D),
                border: Border.all(
                  color: Color(0xff161622),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DropdownButton(
                      hint: Text(
                        'Select Item',
                        style: TextStyle(color: Colors.amber, fontSize: 18),
                      ),
                      dropdownColor: Color(0xff161622),
                      isExpanded: true,
                      iconSize: 36,
                      value: valueChoose2,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose2 = newValue;
                        });
                      },
                      items: listItems.map(
                        (valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: TextStyle(color: Colors.amber),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: inCounter2,
                          color: Color(0xffB00D08),
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                          shape: CircleBorder(),
                        ),
                        Text(
                          '$_counter2',
                          style: TextStyle(color: Colors.white),
                        ),
                        RaisedButton(
                          onPressed: decCounter2,
                          color: Color(0xffB00D08),
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.amber, fontSize: 30),
                          ),
                          shape: CircleBorder(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SizedBox(height: 5)
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2B276D),
                border: Border.all(
                  color: Color(0xff161622),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DropdownButton(
                      hint: Text(
                        'Select Item',
                        style: TextStyle(color: Colors.amber, fontSize: 18),
                      ),
                      dropdownColor: Color(0xff161622),
                      isExpanded: true,
                      iconSize: 36,
                      value: valueChoose3,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose3 = newValue;
                        });
                      },
                      items: listItems.map(
                        (valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: TextStyle(color: Colors.amber),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: inCounter3,
                          color: Color(0xffB00D08),
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                          shape: CircleBorder(),
                        ),
                        Text(
                          '$_counter3',
                          style: TextStyle(color: Colors.white),
                        ),
                        RaisedButton(
                          onPressed: decCounter3,
                          color: Color(0xffB00D08),
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.amber, fontSize: 30),
                          ),
                          shape: CircleBorder(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SizedBox(height: 5)
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2B276D),
                border: Border.all(
                  color: Color(0xff161622),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DropdownButton(
                      hint: Text(
                        'Select Item',
                        style: TextStyle(color: Colors.amber, fontSize: 18),
                      ),
                      dropdownColor: Color(0xff161622),
                      isExpanded: true,
                      iconSize: 36,
                      value: valueChoose4,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose4 = newValue;
                        });
                      },
                      items: listItems.map(
                        (valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: TextStyle(color: Colors.amber),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: inCounter4,
                          color: Color(0xffB00D08),
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                          shape: CircleBorder(),
                        ),
                        Text(
                          '$_counter4',
                          style: TextStyle(color: Colors.white),
                        ),
                        RaisedButton(
                          onPressed: decCounter4,
                          color: Color(0xffB00D08),
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.amber, fontSize: 30),
                          ),
                          shape: CircleBorder(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SizedBox(height: 5)
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2B276D),
                border: Border.all(
                  color: Color(0xff161622),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DropdownButton(
                      hint: Text(
                        'Select Item',
                        style: TextStyle(color: Colors.amber, fontSize: 18),
                      ),
                      dropdownColor: Color(0xff161622),
                      isExpanded: true,
                      iconSize: 36,
                      value: valueChoose5,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose5 = newValue;
                        });
                      },
                      items: listItems.map(
                        (valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: TextStyle(color: Colors.amber),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: inCounter5,
                          color: Color(0xffB00D08),
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                          shape: CircleBorder(),
                        ),
                        Text(
                          '$_counter5',
                          style: TextStyle(color: Colors.white),
                        ),
                        RaisedButton(
                          onPressed: decCounter5,
                          color: Color(0xffB00D08),
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.amber, fontSize: 30),
                          ),
                          shape: CircleBorder(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SizedBox(height: 5)
                  ],
                ),
              ),
            ),
          ),
        ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: RaisedButton(
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Color(0xffB00D08),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                  ),
                ),
             ),
           ],
         ),
        
        SizedBox(height: 10)
      ])),
    );
  }
}
