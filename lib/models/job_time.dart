import 'package:time_tracker/models/user.dart';

class JobTime {
  final String id;
  final String? description;
  final DateTime startJob;
  final double? sumOfTime;
  final User user;

  JobTime({
    required this.id,
    this.description,
    required this.startJob,
    this.sumOfTime,
    required this.user,
  });
}
