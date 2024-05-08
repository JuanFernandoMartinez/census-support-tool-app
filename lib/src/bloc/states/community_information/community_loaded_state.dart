import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';

class CommunityLoadedState extends CommunityState {
  final List<String> communities;

  CommunityLoadedState({required this.communities});
}
