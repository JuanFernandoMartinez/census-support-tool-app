import 'package:census_support_tool_app/src/bloc/events/form_application/form_application_event.dart';

class SaveRecordEvent extends FormApplicationEvent {
  String name;

  SaveRecordEvent({required this.name});
}
