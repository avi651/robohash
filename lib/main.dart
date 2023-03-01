import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:robohash/src/bloc_observer/rb_bloc_observer.dart';
import 'src/bloc/rb_cubit/rb_cubit.dart';
import 'src/repository/rb_repository.dart';
import 'src/screens/rb_home_screen.dart';
import 'src/services/rb_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = RBBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<RBRepository>(
          create: (context) =>
              RBRepository(rbApiServices: RBApiServices()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RBCubit>(
            create: (context) => RBCubit(rbRepository: context.read<RBRepository>()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch:  Colors.blue,
          ),
          home: RBHomeScreen(),
        ),
      ),
    );
  }
}
