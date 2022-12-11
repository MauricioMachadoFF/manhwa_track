import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/create_track/create_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/load_tracks/load_track_cubit.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/validate_track/validate_track_bloc.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/status_dropdown.dart';
import 'package:manhwa_track/shared/domain/value_objects/unique_id/unique_id_vo.dart';

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
    return MultiBlocListener(
      listeners: [
        BlocListener<ValidateTrackBloc, ValidateTrackState>(
          listener: (context, state) {
            if (state.isValid) {
              _isNewTrack ? _onCreateNewTrackTap() : _onUpdateTrackTap();
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
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
              builder: (_, state) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: spacingSmall),
                  DSTextField(
                    controller: _titleController,
                    label: 'Title',
                    errorMessage: state.titleErrorText,
                    onEditingComplete: () => _validateTitleField(
                      context,
                      _titleController.text,
                    ),
                  ),
                  const SizedBox(height: spacingSmall),
                  DSTextField(
                    controller: _chapterController,
                    label: 'Chapter',
                    errorMessage: state.chapterErrorText,
                    onEditingComplete: () => _validateChapterField(
                      context,
                      _chapterController.text,
                    ),
                  ),
                  const SizedBox(height: spacingSmall),
                  DSTextField(
                    controller: _urlController,
                    label: 'URL',
                    errorMessage: state.urlErrorText,
                    onEditingComplete: () => _validateUrlField(
                      context,
                      _urlController.text,
                    ),
                  ),
                  const SizedBox(
                    width: double.maxFinite,
                    child: StatusDropdown(),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: _validateForm,
                      child: Text(
                        _isNewTrack ? 'Create New Track' : 'Update Track',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onCreateNewTrackTap() {
    context.read<CreateTrackCubit>().createNewTrack(
          Track(
            id: UniqueIDVO(),
            title: _titleController.text,
            chapter: double.parse(_chapterController.text),
            url: _urlController.text,
            //TODO(Mauricio): Use status from form
            status: 'Completed',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
  }

  void _onUpdateTrackTap() {}

  void _validateForm() {
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
