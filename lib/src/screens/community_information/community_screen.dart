import 'package:census_support_tool_app/src/bloc/community_information_bloc.dart';
import 'package:census_support_tool_app/src/bloc/events/community_information/select_comunnity_event.dart';
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
          children: [
            const Text("Comunidades",
                style: TextStyle(
                  fontFamily: 'Inria_sans',
                  fontSize: 25,
                )),
            Combobox(
              items: widget.communities,
              onSelect: (selection) {
                context
                    .read<CommunityInformationBloc>()
                    .add(SelectCommunityEvent(community: selection));
              },
            )
          ],
        ),
      ),
    );
  }
}
