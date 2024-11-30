import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/appbar_component.dart';
import 'package:libraryappbyshahid/components/bookcard_component.dart';
import 'package:libraryappbyshahid/model/BookModel.dart';

class AdminViewbooks extends StatefulWidget {
  const AdminViewbooks({Key? key}) : super(key: key);

  @override
  State<AdminViewbooks> createState() => _AdminViewbooksState();
}

class _AdminViewbooksState extends State<AdminViewbooks> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent("View Books"),
      body: StreamBuilder(
        stream: firestore.collection("books").snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (context, index) {
                if (snapshot.hasData) {
                  if (snapshot.data.docs.length > 0) {
                    BookModel book =
                        BookModel.fromJSON(snapshot.data.docs[index]);
                    return BookCard(book);
                  } else {
                    return Text("No Data");
                  }
                }
                return CircularProgressIndicator();
              });
        },
      ),
    );
  }
}
