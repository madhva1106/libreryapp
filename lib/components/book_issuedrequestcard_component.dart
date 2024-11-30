import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookIssuedRequestCardComponent extends StatelessWidget {
  const BookIssuedRequestCardComponent({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.book,
                size: 155,
                color: Color(0xff424242),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("C by Sumit",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text("Jay Patel",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text("Written By:Sumit",style: TextStyle(fontSize: 17,),),
                    RichText(text: TextSpan(
                      text: "Status:",
                      style: TextStyle(fontSize: 17,color: Color(0xff424242)),
                      children: <TextSpan>[
                        TextSpan(text:"Pending",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent)),
                      ]
                    ),),
                    SizedBox(height: 0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text("199",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.check_circle,size: 25,color: Colors.green,)),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
