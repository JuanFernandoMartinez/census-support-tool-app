import 'package:census_support_tool_app/src/bloc/community_information_bloc.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/select_comunnity_event.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_selected_state.dart';
import 'package:census_support_tool_app/src/bloc/states/community_information/community_state.dart';
import 'package:census_support_tool_app/src/screens/community_information/card_information.dart';
import 'package:census_support_tool_app/src/widgets/combobox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommunityScreen extends StatefulWidget {
  final List<String> communities;
  const CommunityScreen({super.key, required this.communities});

  @override
  State<StatefulWidget> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Comunidades",
              style: TextStyle(
                fontFamily: 'Inria_sans',
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            Combobox(
              items: widget.communities,
              onSelect: (selection) {
                context
                    .read<CommunityInformationBloc>()
                    .add(SelectCommunityEvent(community: selection));
              },
            ),
            const SizedBox(height: 25),
            BlocBuilder<CommunityInformationBloc, CommunityState>(
              builder: (context, state) {
                if (state is CommunitySelectedState) {
                  return CardCommunityInformation(
                    admins: state.community.admins,
                    address: state.community.address,
                    forms: state.communities,
                  );
                }
                return const Text("Selecciona una comunidad.");
              },
            )
          ],
        ),
      ),
    );
  }
}
