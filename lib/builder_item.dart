import 'package:api_project/models/articles_model.dart';
import 'package:flutter/material.dart';

class BuilderItem extends StatelessWidget {
  Articles articles;
   BuilderItem({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.network('${articles.urlToImage}' ?? ''),
          const SizedBox(height: 10,),
          Text('${articles.description}')
        ],
      ),
    );
  }
}