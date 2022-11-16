import 'package:flutter/material.dart';
import 'package:movies_app/src/cubit/movies/movies_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/src/models/movies.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesCubit()..getAllMovies(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Netflix"),
          centerTitle: true,
        ),
        body: BlocBuilder<MoviesCubit, MoviesState>(
          builder: (context, state) {
            if (state is MoviesLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is MoviesLoadSuccess) {
              return _buildMovieListUI(state.movies);
            }else if(state is MoviesLoadError){
              return Center(child: Text("Something went wrong"));
            }
            else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  _buildMovieListUI(List<Movies> movies) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          Movies item = movies[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item.image.toString()),
            ),
            title: Text(item.name ?? ""),
            subtitle: Text(item.summary ?? ""),
          );
        });
  }
}
