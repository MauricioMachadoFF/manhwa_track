import 'package:flutter/material.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';
import 'package:manhwa_track/manha_tracks/domain/entities/track.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  const TrackCard({
    required this.track,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(spacingNano),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            spacingNano,
          ),
          border: Border.all(
            color: Colors.red,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(track.title),
              Text('Chapter ${track.chapter}'),
            ],
          ),
          Row(
            children: [
              ManhwaIconButton(
                icon: Icons.edit,
                //TODO(Mauricio): Define colors
                backgroundColor: Colors.red,
                iconSize: sizeSmall,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ManhwaRoutes.trackDetails,
                    arguments: track,
                  );
                },
              ),
              SizedBox(width: spacingNano),
              ManhwaIconButton(
                icon: Icons.delete,
                backgroundColor: Colors.red,
                iconSize: sizeSmall,
                onTap: () {
                  //TODO(Mauricio): Delete card and refresh page
                  //Maybe user should confirm this deletion?
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
