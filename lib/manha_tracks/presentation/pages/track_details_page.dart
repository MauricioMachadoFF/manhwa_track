import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/core/error.dart';
import 'package:manhwa_track/design_sytem.dart/buttons/text_button.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/create_track/create_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/load_tracks/load_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/selected_status/selected_status_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/validate_track/validate_track_bloc.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/status_picker.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';

class TrackDetailsPage extends StatefulWidget {
  final Track? track;
  const TrackDetailsPage({
    this.track,
    super.key,
  });

  @override
  State<TrackDetailsPage> createState() => _TrackDetailsPageState();
}

class _TrackDetailsPageState extends State<TrackDetailsPage> {
  late final TextEditingController _titleController;
  late final TextEditingController _urlController;
  late final TextEditingController _chapterController;

  @override
  void initState() {
    super.initState();
    final track = widget.track;
    if (track != null) {
      _titleController = TextEditingController.fromValue(
        TextEditingValue(text: track.title),
      );
      _urlController = TextEditingController.fromValue(
        TextEditingValue(text: track.url),
      );
      _chapterController = TextEditingController.fromValue(
        TextEditingValue(text: track.chapter.toString()),
      );
      return;
    }
    _titleController = TextEditingController();
    _urlController = TextEditingController();
    _chapterController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _urlController.dispose();
    _chapterController.dispose();
    super.dispose();
  }

  bool get _isNewTrack => widget.track == null;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final status =
            widget.track?.status ?? S.current.tracking_status_reading;
        return SelectedStatusCubit(status);
      },
      child: MultiBlocListener(
        listeners: [
          BlocListener<ValidateTrackBloc, ValidateTrackState>(
            listener: (context, state) {
              if (state.isValid) {
                _isNewTrack
                    ? _onCreateNewTrackTap(context)
                    : _onUpdateTrackTap(context);
              }
            },
          ),
          BlocListener<CreateTrackCubit, CreateTrackState>(
            listener: (_, state) {
              state.whenOrNull(
                // TODO(Mauricio): on error should show something
                // On loading button should be a circular progress indicator

                sucess: () {
                  context.read<LoadTrackCubit>().loadTracks();
                  Navigator.of(context).pop();
                },
              );
            },
          ),
        ],
        child: BaseBackgroundGradient(
          content: GestureDetector(
            onTap: _dismissKeyboard,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: ManhwaIconButton(
                  icon: Icons.chevron_left_rounded,
                  iconSize: sizeMedium,
                  iconColor: Colors.black87,
                  onTap: Navigator.of(context).pop,
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: spacingSmall,
                  ),
                  child: BlocBuilder<ValidateTrackBloc, ValidateTrackState>(
                    builder: (context, state) => Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: spacingSmall),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                DSTextField(
                                  controller: _titleController,
                                  autofocus: true,
                                  label: S.current
                                      .track_detail_page_title_field_label,
                                  errorMessage: state.titleErrorText,
                                  onEditingComplete: () => _validateTitleField(
                                    context,
                                    _titleController.text,
                                  ),
                                ),
                                const SizedBox(height: spacingSmall),
                                DSTextField(
                                  controller: _chapterController,
                                  label: S.current
                                      .track_detail_page_chapter_field_label,
                                  errorMessage: state.chapterErrorText,
                                  onEditingComplete: () =>
                                      _validateChapterField(
                                    context,
                                    _chapterController.text,
                                  ),
                                ),
                                const SizedBox(height: spacingSmall),
                                DSTextField(
                                  controller: _urlController,
                                  label: S.current
                                      .track_detail_page_url_field_label,
                                  errorMessage: state.urlErrorText,
                                  onEditingComplete: () => _validateUrlField(
                                    context,
                                    _urlController.text,
                                  ),
                                ),
                                const SizedBox(height: spacingSmall),
                                const Align(
                                  child: StatusPicker(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const Spacer(),
                        const SizedBox(height: spacingSmall),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: double.maxFinite,
                            child: ManhwaTextButton.onOceanBlue(
                              title: _isNewTrack
                                  ? S.current
                                      .track_details_page_create_new_track_label
                                  : S.current
                                      .track_details_page_update_track_label,
                              onTap: () => _validateForm(context),
                            ),
                          ),
                        ),
                        const SizedBox(height: spacingSmall),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _dismissKeyboard() {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    return;
  }

  void _onCreateNewTrackTap(BuildContext context) {
    context.read<CreateTrackCubit>().createNewTrack(
          Track(
            id: UniqueIDVO(),
            title: _titleController.text,
            chapter: _chapterController.text,
            url: _urlController.text,
            status: context.read<SelectedStatusCubit>().state.status,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
  }

  void _onUpdateTrackTap(BuildContext context) {
    final currentTrack = widget.track;
    if (currentTrack == null) {
      throw UnexpectedAccessError(
        message:
            "currentTrack asserted as null, but can't be null on _onUpdateTrackTap method",
        where: '[Presentation - TrackDetailsPage - _onUpdateTrackTap]',
      );
    }
    context.read<CreateTrackCubit>().updateNewTrack(
          Track(
            id: currentTrack.id,
            title: _titleController.text,
            chapter: _chapterController.text,
            url: _urlController.text,
            status: context.read<SelectedStatusCubit>().state.status,
            createdAt: currentTrack.createdAt,
            updatedAt: DateTime.now(),
          ),
        );
  }

  void _validateForm(BuildContext context) {
    context.read<ValidateTrackBloc>().add(
          ValidateTrackEvent.validateForm(
            title: _titleController.text,
            chapter: _chapterController.text,
            url: _urlController.text,
          ),
        );
  }

  void _validateTitleField(
    BuildContext context,
    String title,
  ) {
    BlocProvider.of<ValidateTrackBloc>(context).add(
      ValidateTrackEvent.validateTitle(title),
    );
  }

  void _validateChapterField(
    BuildContext context,
    String chapter,
  ) {
    BlocProvider.of<ValidateTrackBloc>(context).add(
      ValidateTrackEvent.validateChapter(chapter),
    );
  }

  void _validateUrlField(
    BuildContext context,
    String url,
  ) {
    BlocProvider.of<ValidateTrackBloc>(context).add(
      ValidateTrackEvent.validateUrl(url),
    );
  }
}
