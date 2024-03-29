import 'package:code_editor/components.dart';
import 'package:code_editor/main.dart';
import 'package:code_editor/pilag.dart';
import 'package:code_editor/success.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:highlight/languages/python.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:flutter_highlight/themes/vs.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/darcula.dart';

class CodingScreen extends StatefulWidget {
  final String question;

  const CodingScreen({super.key, required this.question});
  @override
  _CodingScreenState createState() => _CodingScreenState();
}

class _CodingScreenState extends State<CodingScreen> {
  bool isChecked = false;

  CodeController? _codeController;
  Map<String, TextStyle>? theme = monokaiSublimeTheme;
  @override
  Widget build(BuildContext context) {
    const source = "void main() {\n    print(\"Hello, world!\");\n}";

    // Instantiate the CodeController
    _codeController = CodeController(
      text: source,
      language: python,
      theme: theme,
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: heading1("Code Editor", 20),
        backgroundColor: myIndigo,
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor: Colors.blueGrey,
              elevation: 20,
              icon: const Icon(Icons.color_lens_outlined),
              iconEnabledColor: Colors.white,
              items: <String>['Atom', 'Monokai-sublime', 'Darcula']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  onTap: () {
                    setState(() {
                      if (value == "Monokai-sublime") {
                        theme = monokaiSublimeTheme;
                      } else if (value == "Atom") {
                        theme = atomOneDarkTheme;
                      } else if (value == "Darcula") {
                        theme = darculaTheme;
                      }
                    });
                  },
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            qheading(widget.question, 22),
            const SizedBox(
              height: 20,
            ),
            Container(
              // padding: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CodeField(
                  maxLines: 7,
                  minLines: 7,
                  controller: _codeController!,
                  textStyle:
                      const TextStyle(fontFamily: 'SourceCode', fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: PlagiarismInfoWidget(),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  const Icon(Icons.info),
                  const SizedBox(
                    width: 5,
                  ),
                  productTileText("about Plagiarism", 12),
                ],
              ),
            ),
            // PlagiarismInfoWidget(),
            const Spacer(),
            Row(
              children: [
                Checkbox(
                  // activeColor: Colors.white,
                  // checkColor: Theme.of(context)
                  //     .buttonTheme
                  //     .colorScheme!
                  //     .inversePrimary,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                productTileText(
                    "By Submitting code, you agree to the Terms of\nPlagiarism",
                    12),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: mcustomButton("Submit Code", () {
                if (isChecked) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccessfullySubmittedScreen()));
                } else {
                  showToast(context, "Please agree to terms of Plagiarism");
                }
                print("object");
              }, context),
            )
          ],
        ),
      ),
    );
  }

  void showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2), // Adjust the duration as needed
      ),
    );
  }
}
