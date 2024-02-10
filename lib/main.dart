import 'package:basketballpointscounterapp/cubit/counter_cubit.dart';
import 'package:basketballpointscounterapp/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  

  Color selectedcolor = const Color.fromARGB(156, 222, 234, 100);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: selectedcolor,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Points Counter ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.sports_basketball_rounded),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamACounter}',
                        style: const TextStyle(fontSize: 100),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncreament(buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncreament(buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncreament(buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBCounter}',
                        style: const TextStyle(fontSize: 100),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncreament(buttonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncreament(buttonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncreament(buttonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedcolor,
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: selectedcolor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10)),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      );
    }, listener: (context, state) {
      
    });
  }
}
