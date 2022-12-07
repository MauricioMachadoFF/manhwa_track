import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/validate_track_bloc.dart';
import 'package:manhwa_track/manha_tracks/presentation/widgets/status_dropdown.dart';

class TrackDetailsPage extends StatefulWidget {
  const TrackDetailsPage({super.key});

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

  bool get _isNewTrack => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {
                      //TODO(Mauricio): Change behaviour based on if is or not a new track
                    },
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
