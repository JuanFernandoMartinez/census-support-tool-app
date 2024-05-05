import 'package:census_support_tool_app/src/bloc/form_application_bloc.dart';
import 'package:census_support_tool_app/src/bloc/states/form_application/form_application_state.dart';
import 'package:census_support_tool_app/src/screens/form_application/form_application.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormManager extends StatelessWidget {
  const FormManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FormApplicationBloc(),
        child: BlocBuilder<FormApplicationBloc, FormApplicationState>(
            builder: (context, state) {
          return FormAplicationScreen(
            title: "Censo socioeconómico",
            description:
                "Este formulario tiene como objetivo recopilar información sobre las condiciones socioeconómicas de nuestra comunidad. Sus respuestas nos ayudarán a comprender mejor las necesidades de la población y a desarrollar programas y estrategias que mejoren la calidad de vida de todos.",
          );
        }));
  }
}
