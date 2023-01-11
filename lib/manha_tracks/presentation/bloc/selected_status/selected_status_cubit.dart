import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manhwa_track/generated/l10n.dart';

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
          state.copyWith(
            status: S.current.tracking_status_reading,
          ),
        );
        break;
      case 'ReadList':
        emit(
          state.copyWith(
            status: S.current.tracking_status_readlist,
          ),
        );
        break;
      case 'Completed':
        emit(
          state.copyWith(
            status: S.current.tracking_status_completed,
          ),
        );
        break;
      default:
        return;
    }
  }
}
