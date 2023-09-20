import 'package:demo_app3/src/controler/records_cubit/cubit/records_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../model/record.dart';


part 'records_state.dart';

class RecordsCubit extends Cubit<RecordsState> {
  RecordsCubit() : super(RecordsInitial());

  getRecordsData() async {

    emit(RecordsLoading());
    RecordsRepository repository = RecordsRepository();
    List<dynamic>? data = await repository.getData();

    if(data == null) {
      emit(RecordsError());
      return;
    }

    List<Records> records = data.map((item) => Records.fromJSON(item)).toList();
    emit(RecordsSuccess(records));
  }
}
