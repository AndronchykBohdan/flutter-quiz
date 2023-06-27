import 'package:flutter/material.dart';

import 'package:flutter_quiz/models/summer_data.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.data, {super.key});

  final List<SummeryData> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: data.map(
            (element) {
              return Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: element.isCorrect
                          ? const Color.fromRGBO(21, 172, 224, 1)
                          : const Color.fromRGBO(215, 36, 138, 1),
                      minRadius: 15,
                      child: Text(element.humanizedIndex.toString(),
                          style: GoogleFonts.raleway(
                            color: Colors.black45,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            element.question,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            element.userAnswer,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.raleway(
                              color: const Color.fromARGB(195, 255, 255, 255),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            element.correctAnswer,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.raleway(
                              color: const Color.fromARGB(236, 78, 180, 201),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
