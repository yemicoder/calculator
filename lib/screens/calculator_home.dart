import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({Key? key}) : super(key: key);

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  List<String> myList = [];
  List<String> values = [];
  String operation = '';
  double firstNumber = 0;
  double secondNumber = 0;
  String number = '';
  String equalTo = '';
  double answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.bottomRight,
                color: Colors.black,
                child: Text(
                  '$number',
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList = [];
                    number = '0';
                    answer = 0;
                    firstNumber = 0;
                    secondNumber = 0;
                    equalTo = '';
                    operation = '';
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      'AC',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '+/-',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    operation = '%';
                    setState(() {
                      calculate();
                      equal();
                      number = answer.toString();
                    });
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '%',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    operation = '/';
                    setState(() {
                      calculate();
                      number = '0';
                      myList = [];
                    });
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('7');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('8');
                    number = myList.join();
                    print(number);
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('9');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  operation = '*';
                  setState(() {
                    calculate();
                    number = '0';
                    myList = [];
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      'X',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {setState(() {
                  myList.add('4');
                  number = myList.join();
                });},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('5');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('6');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    operation = '-';
                    setState(() {
                      calculate();
                      number = '0';
                      myList = [];
                    });
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('1');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('2');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    myList.add('3');
                    number = myList.join();
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff292828),
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
                ElevatedButton(onPressed: () {
                  operation = '+';
                  setState(() {
                    calculate();
                    print(firstNumber);
                    number = '0';
                    myList = [];
                    print(number);
                    print(firstNumber);
                  });
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: Size(100, 100),
                      shape: CircleBorder(),
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      myList.add('0');
                      number = myList.join();
                    });
                  },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff292828),
                        padding: EdgeInsets.only(right: 90, left: 90,
                            top: 20, bottom: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        )
                      ),
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      )
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {
                        setState(() {
                          myList.add('.');
                          number = myList.join();
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff292828),
                            fixedSize: Size(100, 100),
                            shape: CircleBorder(),
                          ),
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          )
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton(onPressed: () {
                        equalTo = '=';
                        setState(() {
                          equal();
                          number = answer.toString();
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            fixedSize: Size(100, 100),
                            shape: CircleBorder(),
                          ),
                          child: Text(
                            '=',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          )
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

  void calculate() {
    if(operation == '/' || operation == '*' || operation == '+' ||
    operation == '-' || operation == '%') {
      firstNumber = double.parse(number);
    }
    if(operation == '=') {
      secondNumber = double.parse(number);
    }
  }

  void equal() {
    secondNumber = double.parse(number);
    if(equalTo == '=' && operation == '+') {
      answer =  firstNumber + secondNumber;
    }
    else if(equalTo == '=' && operation == '*') {
      answer = firstNumber * secondNumber;
    }
    else if(equalTo == '=' && operation == '-') {
      answer = firstNumber - secondNumber;
    }
    else if(equalTo == '=' && operation == '/') {
      answer = firstNumber / secondNumber;
    }
    else if(equalTo == '=' && operation == '%') {
      answer = firstNumber / 100;
    }
  }
}
