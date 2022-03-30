import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotelist"),
        centerTitle: true,
        foregroundColor: Colors.greenAccent,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  onDeletePressed: () {
                    setState(() {
                      quotes.removeWhere((q) => q.text == quote.text);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
