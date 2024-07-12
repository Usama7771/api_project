import 'package:api_project/constant.dart';
import 'package:api_project/cubit/news_state.dart';
import 'package:api_project/dio_helper.dart';
import 'package:api_project/models/articles_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);
  ArticlesModel articlesModel = ArticlesModel();

  List<Articles> businessList = [];
  List<Articles> sportList = [];
  List<Articles> healthList = [];

  // getBusiness(){
  //   emit(GetBusinessLoadingDataState());
  //   DioHelper.getDataBase(Url: endPoint,
  //   query: {
  //     'country' : 'eg',
  //     'category' : 'business',
  //     'apiKey' : '321ca042f898433ba63e8775af5e5fe0'
  //   }).then((value){
  //     articlesModel = ArticlesModel.fromJson(value.data);
  //     businessList = articlesModel.articles!;
  //     print(businessList);
  //     emit(GetBusinessSucessState());
  //   }).catchError((error){
  //     print(error);

  //     emit(GetBusinessErrorState());
  //   });
  // }
  getBusiness(){
    emit(GetBusinessLoadingDataState());
    DioHelper.getDataBase(Url: endPoint,
    query: {
      'country' : 'eg',
      'category' : 'business',
      'apiKey' : '321ca042f898433ba63e8775af5e5fe0'
    }).then((value){
      articlesModel = ArticlesModel.fromJson(value.data);
      businessList = articlesModel.articles!;
      print(businessList);
      emit(GetBusinessSucessState());
    }).catchError((error){
      print(error);

      emit(GetBusinessErrorState());
    });
  }

  getSport(){
    emit(GetSportsLoadingDataState());
    DioHelper.getDataBase(Url: endPoint,
    query: {
      'country' : 'eg',
      'category' : 'sport',
      'apiKey' : '935fd7ff5d5d47b9b01be1f7c0b9ba00'
    }).then((value){
      articlesModel = ArticlesModel.fromJson(value.data);
      sportList = articlesModel.articles!;
      emit(GetSportsSucessState());
    }).catchError((eror){
      print('error');
      emit(GetSportsErrorState());
    });
  }

  getHealth(){
    emit(GetHealthLoadingDataState());
    DioHelper.getDataBase(Url: endPoint,
    query: {
      'country' : 'eg',
      'category' : 'health',
      'apiKey' : '935fd7ff5d5d47b9b01be1f7c0b9ba00'
    }).then((value){
      articlesModel = ArticlesModel.fromJson(value.data);
      healthList = articlesModel.articles!;
      emit(GetHealthSucessState());
    }).catchError((eror){
      print('error');
      emit(GetHealthErrorState());
    });
  }

  int currentIndex = 0;
  changeBottomBar(int index){
    currentIndex = index;
    emit(ChangeNavBarState());
  }
}