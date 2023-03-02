import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:robohash/src/components/rb_home_components.dart';
import '../bloc/rb_cubit/rb_cubit.dart';
import '../bloc/rb_cubit/rb_state.dart';
import '../widgets/rb_app_bar.dart';

class RBHomeScreen extends StatefulWidget {
  String? searchTxt;
  RBHomeScreen({super.key});

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
    TextEditingController editingController = TextEditingController();
    return Scaffold(
      appBar: const RBAppBar(
          title: 'ROBOFRIENDS'
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
            return RBHomeComponents(rbModel: state.rbModel);
          }
          return Container();
        },
      ),
    );
  }
}