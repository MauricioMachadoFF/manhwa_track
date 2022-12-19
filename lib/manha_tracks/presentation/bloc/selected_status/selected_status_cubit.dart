import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_status_cubit.freezed.dart';
part 'selected_status_state.dart';

class SelectedStatusCubit extends Cubit<SelectedStatusState> {
  SelectedStatusCubit(String status)
      : super(
          SelectedStatusState(status),
        );

  void changeStatus(String status) {
    switch (status) {
      case 'Reading':
        emit(
          state.copyWith(status: 'Reading'),
        );
        break;
      case 'ReadList':
        emit(
          state.copyWith(status: 'ReadList'),
        );
        break;
      case 'Completed':
        emit(
          state.copyWith(status: 'Completed'),
        );
        break;
      default:
        return;
    }
  }
}
