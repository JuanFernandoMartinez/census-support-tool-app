import 'package:census_support_tool_app/src/bloc/events/community_information/community_event.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/load_communities_event.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/select_comunnity_event.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_initial_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_loaded_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_selected_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:census_support_tool_app/src/model/Community.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityInformationBloc extends Bloc<CommunityEvent, CommunityState> {
  List<Community> communities = [
    Community(
        name: "Villa del Sol",
        address: "Calle 10 Sur # 78 - 45, Cali",
        admins: ["Juan Pérez López", "María Gómez Martínez","Carlos Ruiz Hernández"]),
    Community(
        name: "El Mirador",
        address: "Carrera 45 # 12 - 34, Cali",
        admins: ["Ana Castro Rodríguez", "Diego Moreno García"]),
    Community(
        name: "Conjunto Residencial Los Robles",
        address: "Avenida 30 Norte # 21 - 56, Cali",
        admins: ["José Sánchez Vargas", "Elizabeth Torres Jiménez"]),
    Community(
        name: "Urbanización Portal del Norte",
        address: "Calle 145 # 16 - 89, Cali",
        admins: ["Manuel González Ortiz", "Carolina Gutiérrez López"]),
    Community(
        name: "Edificio Brisas del Mar",
        address: " Carrera 1 Este # 4 - 23, Cali",
        admins: ["Sandra Jiménez Romero", "Luis Delgado Morales"]),
  ];

  CommunityInformationBloc() : super(CommunityInitialState()) {
    on<SelectCommunityEvent>(
      (event, emit) {

        Community comm = getCommunityByName(event.community);
        emit(CommunitySelectedState(
            community: comm, communities: getCommunityNames(communities)));
      },
    );

    on<LoadCommunitiesEvent>(
      (event, emit) async {
        await Future.delayed(const Duration(seconds: 2));
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

  Community getCommunityByName(String name) {
    for (var community in communities) {
      if (community.name == name) {
        return community;
      }
    }
    return Community(name: "El otoño", address: "Carrera 10ma con 34", admins: []);
  }
}
