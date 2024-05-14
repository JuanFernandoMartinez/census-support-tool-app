import 'package:census_support_tool_app/src/bloc/events/community_information/community_event.dart';

class SelectCommunityEvent extends CommunityEvent {
  final String community;
  SelectCommunityEvent({required this.community});
}
