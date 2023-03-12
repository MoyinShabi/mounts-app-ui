import 'package:flutter/material.dart';
import 'package:mounts_of_the_world_app_ui/constants/mounts_dummy_data.dart';
import 'package:mounts_of_the_world_app_ui/models/mount_model.dart';

class MountsListView extends StatelessWidget {
  const MountsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 150,
      child: ListView.builder(
        // physics: ,
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];
          return Container(
            width: 150,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(currentMount.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentMount.name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  currentMount.location,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
