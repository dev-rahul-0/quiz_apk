import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 201, 153, 251),
                      fontSize: 15),
                ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 201, 153, 251),
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              data['user_answer'] as String,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize:16),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
