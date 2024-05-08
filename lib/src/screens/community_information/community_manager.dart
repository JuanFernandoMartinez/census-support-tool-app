import 'package:census_support_tool_app/src/bloc/community_information_bloc.dart';
import 'package:census_support_tool_app/src/screens/community_information/community_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityManager extends StatelessWidget {
  const CommunityManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CommunityInformationBloc(),
        child: BlocBuilder(
          builder: (context, state) => CommunityScrren(),
        ));
  }
}
