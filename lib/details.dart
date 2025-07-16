import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_screen_quote_app/model.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Quote detail = ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 850,
          width: 850,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),

            gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("${detail.quote}",style: GoogleFonts.eduNswActFoundation(fontSize: 40),),
            Text("${detail.author}",style: GoogleFonts.akatab(fontSize: 20))

          ],),
        ),
      ),
    );
  }
}
