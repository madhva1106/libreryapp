import 'package:cloud_firestore/cloud_firestore.dart';

class BookService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future addBook(String name, String author, int pages, int price,
      String publisher) async {
    await firestore.collection("books").add({
      "name": name,
      "author": author,
      "pages": pages,
      "price": price,
      "publisher": publisher,
    });
  }

  Future deleteBook(String?id) async {
    await firestore.collection("books").doc(id).delete();
  }
}
