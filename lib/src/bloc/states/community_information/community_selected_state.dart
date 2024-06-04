import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:census_support_tool_app/src/model/Community.dart';

class CommunitySelectedState extends CommunityState {
  final Community community;
  final List<String> communities;

  CommunitySelectedState({required this.community, required this.communities});
}
