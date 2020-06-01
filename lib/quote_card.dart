import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  quote.text,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600]
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  quote.author,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 100.0),
                child: RaisedButton.icon(
                    onPressed: delete,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Delete Quote',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    color: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}