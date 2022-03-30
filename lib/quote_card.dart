import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function onDeletePressed;
  const QuoteCard(
      {Key? key, required this.quote, required this.onDeletePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 4,
            ),
            Text(quote.author),
            SizedBox(
              height: 4,
            ),
            TextButton.icon(
              onPressed: () {
                onDeletePressed();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              label: Text("Delete"),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
