import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/appbar_component.dart';
import 'package:libraryappbyshahid/components/book_issuedrequestcard_component.dart';
class AdminViewIssuedRequest extends StatefulWidget {
  const AdminViewIssuedRequest({Key? key}) : super(key: key);

  @override
  State<AdminViewIssuedRequest> createState() => _AdminViewIssuedRequestState();
}

class _AdminViewIssuedRequestState extends State<AdminViewIssuedRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent("Issued Request"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            BookIssuedRequestCardComponent()
          ],
        ),
      ),
    );
  }
}
