import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotes_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'oscar wilde', text: 'Be yourself'),
    Quote(author: 'oscar wilde2', text: 'Be yourself2'),
    Quote(author: 'oscar wilde3', text: 'Be yourself3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
          quote: e,
          delete: () {
            setState(() {
              quotes.remove(e);
            });
          }
        )).toList(),
      ),
    );
  }
}

