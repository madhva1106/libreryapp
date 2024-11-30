import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/model/BookModel.dart';
import 'package:libraryappbyshahid/services/book_service.dart';

class BookCard extends StatelessWidget {
  BookModel book;
  BookCard(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(
                Icons.book,
                size: 140,
                color: Color(0xff424242),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${book.name}",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text("Written By:${book.author}"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${book.price}",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              BookService().deleteBook(book.id);
                            },
                            icon: Icon(
                              Icons.delete,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        elevation: 0.8,
      ),
    );
  }
}
