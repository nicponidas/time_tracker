import 'package:time_tracker/models/client.dart';

class Job {
  final String id;
  final int number;
  final String title;
  final double? estimation;
  final Client client;

  Job({
    required this.id,
    required this.number,
    required this.title,
    this.estimation,
    required this.client,
  });
}
