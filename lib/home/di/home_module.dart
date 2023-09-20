import 'package:flutter_github/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

class HomeModule {
  void provideModule() {
    GetIt.instance.registerFactory<HomeCubit>(() => HomeCubit());
  }
}
