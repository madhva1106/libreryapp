import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/appbar_component.dart';
import 'package:libraryappbyshahid/components/button_component.dart';
import 'package:libraryappbyshahid/components/textfield_component.dart';
import 'package:libraryappbyshahid/services/book_service.dart';
import 'package:libraryappbyshahid/utils/messages.dart';

class AdminAddBook extends StatefulWidget {
  const AdminAddBook({Key? key}) : super(key: key);

  @override
  State<AdminAddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AdminAddBook> {
  TextEditingController name = TextEditingController();
  TextEditingController author = TextEditingController();
  TextEditingController pages = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController publisher = TextEditingController();

  Future addBook() async {
    if (name.text == "" ||
        author.text == "" ||
        pages.text == "" ||
        price.text == "" ||
        publisher.text == "") {
      showMsg(context, "All Fields Are Required", Colors.red);
    }
    await BookService().addBook(name.text, author.text, int.parse(pages.text),
        int.parse(price.text), publisher.text);
    showMsg(context, "Book Added", Colors.green);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent("Add Book"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextfieldComponent(name, "Book Name"),
              TextfieldComponent(author, "Author Name"),
              TextfieldComponent(pages, "Pages"),
              TextfieldComponent(price, "Price"),
              TextfieldComponent(publisher, "Publisher"),
              ButtonComponent(addBook, "Add Book"),
            ],
          ),
        ),
      ),
    );
  }
}
