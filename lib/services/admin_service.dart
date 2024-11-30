import 'package:cloud_firestore/cloud_firestore.dart';

class AdminService{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future login(String unm,String pwd) async {
    QuerySnapshot snapshot = await firestore.collection("admins").where("unm",isEqualTo: unm).where("pwd",isEqualTo: pwd).get();

    return snapshot.docs.length;
  }
}