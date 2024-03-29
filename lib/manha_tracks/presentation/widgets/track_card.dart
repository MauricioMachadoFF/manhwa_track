import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/buttons/text_button.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/delete_track/delete_track_cubit.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  const TrackCard({
    required this.track,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _goReadTrack(context),
      child: Container(
        padding: const EdgeInsets.all(spacingSmall),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(
            spacingNano,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(track.title),
                  Text(S.current.chapter_prefix(track.chapter)),
                ],
              ),
            ),
            Row(
              children: [
                ManhwaIconButton(
                  icon: Icons.edit,
                  backgroundColor: pink,
                  iconSize: sizeSmall,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ManhwaRoutes.trackDetails,
                      arguments: track,
                    );
                  },
                ),
                const SizedBox(width: spacingNano),
                ManhwaIconButton(
                  icon: Icons.delete,
                  backgroundColor: pink,
                  iconSize: sizeSmall,
                  onTap: () => _onDelete(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _goReadTrack(BuildContext context) {
    final url = Uri.tryParse(track.url);
    if (url?.hasAbsolutePath ?? false) {
      Navigator.of(context).pushNamed(
        ManhwaRoutes.manhwaReading,
        arguments: track.url,
      );
      return;
    }
    String errorMessage = S.current.track_card_invalid_url;
    if (track.url.isEmpty) {
      errorMessage = S.current.track_card_empty_url;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        duration: const Duration(milliseconds: 1500),
      ),
    );
    return;
  }

  void _onDelete(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(sizeMedium),
        topRight: Radius.circular(sizeMedium),
      )),
      builder: (_) => SafeArea(
        top: false,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: spacingSmall,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const _CloseButton(),
                const _AttentionWarning(),
                Row(
                  children: [
                    Expanded(
                      child: ManhwaTextButton.onOceanBlue(
                        title: S.current.cancel,
                        onTap: Navigator.of(context).pop,
                      ),
                    ),
                    const SizedBox(width: spacingSmall),
                    Expanded(
                      child: ManhwaTextButton.onOceanBlue(
                        title: S.current.delete_track,
                        onTap: () {
                          Navigator.of(context).pop();
                          context.read<DeleteTrackCubit>().delete(track.id);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: spacingSmall),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: Navigator.of(context).pop,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}

class _AttentionWarning extends StatelessWidget {
  const _AttentionWarning();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.delete_forever_rounded,
          size: sizeBig,
          color: pink,
        ),
        const SizedBox(height: spacingNano),
        Text(
          S.current.track_deletion_alert,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
