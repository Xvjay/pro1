import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pro1/langs/french.dart';
import 'package:pro1/langs/spanish.dart';

class GetData extends StatelessWidget {
  final String docID;

  GetData({required this.docID, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(docID).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          String language = data[
              'langaue']; // Assuming 'language' is the field you want to compare

          // Return a callback with the language data
          return _handleLanguageData(context, language);
        }

        // Return an empty container while waiting for data
        return Text("LOADING.......");
      },
    );
  }

  Widget _handleLanguageData(BuildContext context, String language) {
    // Compare the value of 'language' and perform navigation accordingly
    if (language == 'French') {
      // If language is 'French', return French screen
      return French();
    } else if (language == 'Spanish') {
      // If language is 'Spanish', return Spanish screen
      return span();
    }

    // Default return an empty container
    return Container();
  }
}
