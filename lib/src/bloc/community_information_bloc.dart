import 'package:census_support_tool_app/src/bloc/events/community_information/community_event.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/select_comunnity_event.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_initial_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityInformationBloc extends Bloc<CommunityEvent, CommunityState> {
  CommunityInformationBloc() : super(CommunityInitialState()) {
    on<SelectCommunityEvent>(
      (event, emit) {},
    );
  }
}
