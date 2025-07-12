import 'package:flutter/material.dart';
import 'package:multi_screen_quote_app/model.dart';

class Home extends StatelessWidget {
  List<Quote> quote = [
    Quote(
      quote:
          "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe",
      author: "Albert Einstein",
    ),
    Quote(
      quote: "You only live once, but if you do it right, once is enough.",
      author: "Mae West",
    ),
    Quote(
      quote:
          "In three words I can sum up everything I've learned about life: it goes on.",
      author: "Robert Frost",
    ),
    Quote(
      quote: "We accept the love we think we deserve",
      author: "Stephen Chbosky",
    ),
    Quote(
      quote:
          "I am so clever that sometimes I don't understand a single word of what I am saying",
      author: "Oscar Wilde",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Quotes and Author", style: TextStyle(color: Colors.blue)),
      ),
      body: ListView.builder(

        itemCount: quote.length,
        itemBuilder: (context, index) {
          return  GestureDetector(onTap: () {
            Navigator.pushNamed(arguments: quote[index],context, "details");
          },
            child: Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(3)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(child: Text(
                        quote[index].quote, style: TextStyle(color: Colors.white),),
                        alignment: Alignment.topLeft,),
                      SizedBox(height: 25),
                      Align(child: Text(quote[index].author,style: TextStyle(color: Colors.blue),),alignment: Alignment.centerRight,),
                    ],
                  ),
                ),

            ),
          );
        },
      ),
    );
  }
}
