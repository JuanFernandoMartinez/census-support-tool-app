import 'package:census_support_tool_app/src/bloc/events/community_information/community_event.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/load_communities_event.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/select_comunnity_event.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_initial_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_loaded_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:census_support_tool_app/src/model/Community.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityInformationBloc extends Bloc<CommunityEvent, CommunityState> {
  List<Community> communities = [
    Community(
        name: "Comunidad A",
        address: "Calle 123, Ciudad X",
        admins: ["Admin1", "Admin2"]),
    Community(
        name: "Comunidad B",
        address: "Avenida Principal, Ciudad Y",
        admins: ["Admin3", "Admin4"]),
    Community(
        name: "Comunidad C",
        address: "Plaza Central, Ciudad Z",
        admins: ["Admin5", "Admin6"]),
    Community(
        name: "Comunidad D",
        address: "Calle Mayor, Ciudad W",
        admins: ["Admin7", "Admin8"]),
    Community(
        name: "Comunidad E",
        address: "Avenida Norte, Ciudad V",
        admins: ["Admin9", "Admin10"]),
    Community(
        name: "Comunidad F",
        address: "Calle Sur, Ciudad U",
        admins: ["Admin11", "Admin12"]),
    Community(
        name: "Comunidad G",
        address: "Plaza Oeste, Ciudad T",
        admins: ["Admin13", "Admin14"]),
    Community(
        name: "Comunidad H",
        address: "Avenida Este, Ciudad S",
        admins: ["Admin15", "Admin16"]),
    Community(
        name: "Comunidad I",
        address: "Calle Este, Ciudad R",
        admins: ["Admin17", "Admin18"]),
    Community(
        name: "Comunidad J",
        address: "Avenida Sur, Ciudad Q",
        admins: ["Admin19", "Admin20"]),
  ];

  CommunityInformationBloc() : super(CommunityInitialState()) {
    on<SelectCommunityEvent>(
      (event, emit) {},
    );

    on<LoadCommunitiesEvent>(
      (event, emit) {
        emit(CommunityLoadedState(communities: getCommunityNames(communities)));
      },
    );
  }

  List<String> getCommunityNames(List<Community> communities) {
    List<String> communityNames = [];
    for (var community in communities) {
      communityNames.add(community.name);
    }
    return communityNames;
  }
}
