import 'package:cloud_firestore/cloud_firestore.dart';

class DashboardService{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future getCount(String collection)async{
    QuerySnapshot snapshot = await firestore.collection(collection).get();
    return snapshot.docs.length;
  }
}