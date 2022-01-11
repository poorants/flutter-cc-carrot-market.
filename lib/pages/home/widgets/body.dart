import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget bodyWidget() {
  return Center(
    child: IconButton(
      onPressed: () async {
        final f = FirebaseFirestore.instance;
        final profileCollection = f.collection('PROFILE');
        final snapshot = profileCollection.snapshots();
        print('onPressed : start');

        // snapshot.listen((event) {
        //   print(event);
        // });
        int count = 0;
        await snapshot.forEach(
          (element) {
            count++;
            print("count : ${count}");
            print(element.size);
            element.docs.forEach((data) {
              print('${data.id} :  ${data.data()}');
            });
          },
        );
      },
      icon: const Icon(Icons.ac_unit),
    ),
  );
}
