import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github/home/presentation/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required HomeCubit cubit}) : _cubit = cubit;

  final HomeCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("GithubStars"),
      ),
      body: BlocProvider<HomeCubit>(
        create: (context) => _cubit..fetchData(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case HomeInitial:
                return Container(
                  color: Colors.white,
                  child: Text("carregou"),
                );
              default:
                return const Text("Error");
            }
          },
        ),
      ),
    );
  }
}
