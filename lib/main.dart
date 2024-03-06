import 'package:bloc_counter_beginer/src/bloc/counter_bloc.dart';
import 'package:bloc_counter_beginer/src/cubit/counter_cubit.dart';
import 'package:bloc_counter_beginer/src/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => CounterCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
