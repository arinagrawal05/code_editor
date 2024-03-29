import 'package:code_editor/components.dart';
import 'package:flutter/material.dart';

class PlagiarismInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heading1(
            'About Plagiarism',
            22,
          ),
          SizedBox(height: 20),
          heading1(
            'Plagiarism is the act of presenting someone else\'s work as your own without proper citation or attribution. It can take various forms, including copying text, ideas, or images from sources without permission or acknowledgment.',
            16,
          ),
          SizedBox(height: 20),
          heading1(
            'To avoid plagiarism, it is essential to properly cite and reference all sources used in your work. This includes quoting, paraphrasing, and summarizing information while providing appropriate credit to the original authors.',
            16,
          ),
          SizedBox(height: 20),
          heading1(
            'Plagiarism is considered unethical and can have serious consequences in academic, professional, and legal contexts. It undermines the integrity of scholarly and creative endeavors and violates ethical standards.',
            16,
          ),
        ],
      ),
    );
  }
}
