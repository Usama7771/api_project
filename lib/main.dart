import 'dart:convert';

import 'package:api_project/cubit/news_cubit.dart';
import 'package:api_project/dio_helper.dart';
import 'package:api_project/home_page.dart';
import 'package:api_project/users_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NewsCubit() .. getBusiness() .. getSport() .. getHealth(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,

        ),
        home: HomePage(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key,});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   // String Url = 'https://reqres.in/api/users';

//   // Future <UsersModel> getData() async {
//   //     http.Response response = await http.get(Uri.parse(Url));
//   //     print('response ${response.body} status code ${response.statusCode}');
//   //     return UsersModel.fromJson(jsonDecode(response.body));
//   // }

//   // Dio dio = Dio();
//   // Future <UsersModel> getData2()async{
//   //   Response response = await dio.get(Url);
//   //   print('response ${response.data} Status code ${response.statusCode}');
//   //   return UsersModel.fromJson(response.data);
//   // }

//   // @override
//   // void initState() {
//   //   getData();
//   //   super.initState();
//   // }
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//     );
//   }
// }
