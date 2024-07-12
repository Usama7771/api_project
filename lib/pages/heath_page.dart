import 'package:api_project/builder_item.dart';
import 'package:api_project/cubit/news_cubit.dart';
import 'package:api_project/cubit/news_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeathPage extends StatelessWidget {
  const HeathPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: NewsCubit.get(context).healthList.length,
          itemBuilder: (context, index) =>
              BuilderItem(articles: NewsCubit.get(context).healthList[index]),
        );
      },
    );
  }
}
