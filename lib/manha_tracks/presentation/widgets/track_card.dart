import 'package:flutter/material.dart';
import 'package:manhwa_track/core/routes.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key});

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
              //TODO(Mauricio): Remove mock data
              Text('título'),
              Text('Episódio 63'),
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
                  //TODO(Mauricio): Navigate to track card details
                  print('banana');
                  Navigator.of(context).pushNamed(ManhwaRoutes.trackDetails);
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
