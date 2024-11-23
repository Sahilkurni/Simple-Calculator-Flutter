import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// following is how we create a class with statefulwidget  once created a slass we need to create a set state class of same syntax given below

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var count = 0;
  var number1 = TextEditingController();
  var number2 = TextEditingController();
  var ans = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Counter App With Stateful",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.lightGreenAccent[400],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: number1,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: number2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var num1 = int.parse(number1.text.toString());
                              var num2 = int.parse(number2.text.toString());
                              ans = num1 + num2;
                            });
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black)),
                          child: const Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var num1 = int.parse(number1.text.toString());
                              var num2 = int.parse(number2.text.toString());
                              ans = num1 - num2;
                            });
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black)),
                          child: const Text(
                            "Sub",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var num1 = int.parse(number1.text.toString());
                              var num2 = int.parse(number2.text.toString());
                              ans = num1 * num2;
                            });
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black)),
                          child: const Text(
                            "Mul",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var num1 = int.parse(number1.text.toString());
                              var num2 = int.parse(number2.text.toString());
                              var ans1 = num1 ~/ num2;
                              ans = ans1;
                            });
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black)),
                          child: const Text(
                            "Div",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Answer: $ans",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        )

        // following is logic of counter app
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         "Count $count",
        //         style: TextStyle(fontWeight: FontWeight.bold),
        //       ),
        //       Container(
        //         height: 10,
        //       ),
        //       ElevatedButton(
        //           onPressed: () {
        //             setState(() {
        //               count++;
        //             });
        //           },
        //           child: Text("+")),
        //       Container(
        //         height: 10,
        //       ),
        //       ElevatedButton(
        //           onPressed: () {
        //             setState(() {
        //               count--;
        //             });
        //           },
        //           child: Text("-")),
        //     ],
        //   ),
        // ),
        );
  }
}
