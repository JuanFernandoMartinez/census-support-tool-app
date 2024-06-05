import 'package:census_support_tool_app/src/bloc/community_information_bloc.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/load_communities_event.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_initial_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_loaded_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_selected_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:census_support_tool_app/src/screens/community_information/community_screen.dart';
import 'package:census_support_tool_app/src/widgets/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityManager extends StatelessWidget {
  const CommunityManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CommunityInformationBloc(),
        child: BlocConsumer<CommunityInformationBloc, CommunityState>(
          builder: (context, state) {
            if (state is CommunityInitialState) {
              context
                  .read<CommunityInformationBloc>()
                  .add(LoadCommunitiesEvent());
              return const LoadingScreen();
            } else if (state is CommunityLoadedState) {
              return CommunityScreen(
                communities: state.communities,
              );
            } else if (state is CommunitySelectedState) {
              return CommunityScreen(
                communities: state.communities,
              );
            } else {
              return const Center(child: Text("Error"));
            }
          },
          listener: (BuildContext context, CommunityState state) {},
        ));
  }
}
