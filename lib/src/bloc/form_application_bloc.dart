import 'package:census_support_tool_app/src/bloc/events/form_application/form_application_event.dart';
import 'package:census_support_tool_app/src/bloc/events/form_application/save_record_event.dart';
import 'package:census_support_tool_app/src/bloc/events/form_application/show_save_record_event.dart';
import 'package:census_support_tool_app/src/bloc/states/form_application/form_initial_state.dart';
import 'package:census_support_tool_app/src/bloc/states/form_application/form_application_state.dart';
import 'package:census_support_tool_app/src/bloc/states/form_application/show_dialog_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormApplicationBloc
    extends Bloc<FormApplicationEvent, FormApplicationState> {
  FormApplicationBloc() : super(FormInitialState()) {
    on<SaveRecordEvent>(
      (event, emit) {
        debugPrint(event.name);
      },
    );
    on<ShowSaveRecordEvent>(
      (event, emit) {
        emit(ShowDialogState());
      },
    );
  }
}
