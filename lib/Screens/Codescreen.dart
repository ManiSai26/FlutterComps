import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syntax_highlighter/syntax_highlighter.dart';
class CodeScreen extends StatelessWidget {
  final Widget widget;

  const CodeScreen({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Input Container'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: widget,
                width: 500,
                alignment: Alignment.center,
              ),
            ),
            Expanded(child:
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
              ),
              width: 500,
              child:  SingleChildScrollView(
                child:  RichText(
                  text: TextSpan(
                    style: GoogleFonts.getFont('Poppins'),
                    children: <TextSpan>[
                      DartSyntaxHighlighter(SyntaxHighlighterStyle.lightThemeStyle()).format("""
import 'package:flutter/material.dart';
class CircularInputContainer extends StatelessWidget {
  final String label;
   TextEditingController controller=TextEditingController();

   CircularInputContainer({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.orange,
      padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0)
          ),
        ),
      ),
    );
  }
}
""",
                      ),
                    ],
                  ),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
