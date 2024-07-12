import 'package:api_project/pages/business_page.dart';
import 'package:api_project/cubit/news_cubit.dart';
import 'package:api_project/cubit/news_state.dart';
import 'package:api_project/models/articles_model.dart';
import 'package:api_project/pages/heath_page.dart';
import 'package:api_project/pages/sport_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  Articles articles = Articles();
  HomePage({super.key});
  List <Widget> screens = [
    BusinessPage(),
    SportPage(),
    HeathPage()
  ];

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit = NewsCubit.get(context);
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomBar(index);
            },
            items: const [BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
            BottomNavigationBarItem(icon: Icon(Icons.health_and_safety), label: 'Health')],
          ),
        );
      },
    );
  }
}
