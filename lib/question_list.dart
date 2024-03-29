import 'package:code_editor/coding_screen.dart';
import 'package:code_editor/components.dart';
import 'package:code_editor/main.dart';
import 'package:flutter/material.dart';

class CodingQuestionsScreen extends StatelessWidget {
  final List<String> codingQuestions = [
    "Implement a function to check if a string is a palindrome.",
    "Write a program to calculate the Fibonacci sequence up to a certain number of terms.",
    "Implement a queue using arrays.",
    "Write a function to determine if a given number is prime.",
    "Create a program to reverse a linked list.",
    "Implement a binary tree data structure.",
    "Write a function to check if two strings are anagrams of each other.",
    "Implement a priority queue using heaps.",
    "Create a program to calculate the sum of digits of a given number.",
    "Write a function to find the nth term of the Fibonacci sequence using recursion.",
    "Implement a hash table data structure.",
    "Write a program to check if a given string contains duplicate characters.",
    "Create a function to convert a decimal number to binary.",
    "Implement a depth-first search algorithm for traversing a graph.",
    "Write a program to calculate the area of a triangle given its three sides.",
    "Implement a circular linked list data structure.",
    "Write a function to check if a given year is a leap year.",
    "Create a program to find the GCD (Greatest Common Divisor) of two numbers.",
    "Implement a breadth-first search algorithm for traversing a graph.",
    "Write a function to determine if a given string is a valid palindrome permutation."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coding Questions'),
      ),
      body: ListView.builder(
        itemCount: codingQuestions.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20), // Adjust border radius as needed
              ),
              child: ListTile(
                tileColor: myIndigo.withOpacity(0.3),
                title: qheading(
                  codingQuestions[index],
                  18,
                ),
                // Add onTap to handle clicking on the question
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CodingScreen(question: codingQuestions[index])));

                  // Add navigation or action when a question is tapped
                  // For example, navigate to a detail screen or show a dialog

                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       title: Text("Question"),
                  //       content: Text(codingQuestions[index]),
                  //       actions: [
                  //         ElevatedButton(
                  //           onPressed: () {
                  //             Navigator.of(context).pop();
                  //           },
                  //           child: Text('Close'),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
