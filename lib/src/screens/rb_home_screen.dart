import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../bloc/rb_cubit/rb_cubit.dart';
import '../bloc/rb_cubit/rb_state.dart';

class RBHomeScreen extends StatefulWidget {
  const RBHomeScreen({super.key});

  @override
  State<RBHomeScreen> createState() => _RBHomeScreenState();
}

class _RBHomeScreenState extends State<RBHomeScreen> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<RBCubit>(context).fetchRBData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RBData'),
      ),
      body: BlocBuilder<RBCubit, RBState>(
        builder: (context, state) {
          if(state is RBStateInitial) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state is RBStateLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state is RBStateError) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (state is RBStateSuccess) {
            return Container(
              child: Text(state.rbModel[0].name ?? ""),
            );
          }
          return Container();
        },
      ),
    );
  }
}