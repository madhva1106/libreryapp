import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/appbar_component.dart';
import 'package:libraryappbyshahid/components/book_issuecard_component.dart';
import 'package:libraryappbyshahid/components/student_drawer_compnet.dart';
import 'package:libraryappbyshahid/model/BookModel.dart';

class StudentViewBooks extends StatefulWidget {
  const StudentViewBooks({Key? key}) : super(key: key);

  @override
  State<StudentViewBooks> createState() => _StudentViewBooksState();
}

class _StudentViewBooksState extends State<StudentViewBooks> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StudentDrawerCompnet(),
        appBar: AppBarComponent("View Books"),
        body: StreamBuilder(
            stream: firestore.collection("books").snapshots(),
            builder: (BuildContext context,AsyncSnapshot snapshot){
                return ListView.builder(itemCount: snapshot.data?.docs.length,itemBuilder: (context,index){
                  if (snapshot.hasData) {
                    if(snapshot.data.docs.length>0){
                      BookModel book = BookModel.fromJSON(snapshot.data?.docs[index]);
                      return BookIssueCardComponent(book);
                    }else{
                      return Text("No Data");
                    }
                  }
                  return CircularProgressIndicator();
                });
            })
    );
  }
}
