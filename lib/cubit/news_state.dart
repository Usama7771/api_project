

import 'package:flutter/material.dart';

@immutable

abstract class NewsState {}
class NewsInitial extends NewsState{}
class ChangeNavBarState extends NewsState{}
class GetBusinessSucessState extends NewsState{}
class GetBusinessLoadingDataState extends NewsState{}
class GetBusinessErrorState extends NewsState{}
class GetSportsSucessState extends NewsState{}
class GetSportsLoadingDataState extends NewsState{}
class GetSportsErrorState extends NewsState{}
class GetHealthSucessState extends NewsState{}
class GetHealthLoadingDataState extends NewsState{}
class GetHealthErrorState extends NewsState{}