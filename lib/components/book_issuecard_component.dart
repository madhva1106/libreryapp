import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:libraryappbyshahid/model/BookModel.dart';

class BookIssueCardComponent extends StatelessWidget {
  BookModel book;
  BookIssueCardComponent(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 0.8,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.book,
                size: 140,
                color: Color(0xff424242),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${book.name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        Text("${book.author}"),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("₹${book.price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                            ElevatedButton(onPressed: (){}, child: Text("Issue Book",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),)
                          ],
                        )
                      ],
                    ),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
