import 'package:time_tracker/data/list_of_clients.dart';
import 'package:time_tracker/models/job.dart';

List<Job> listOfJobs = [
  Job(
    id: 'c1',
    number: 88204,
    title: '00011791 - localized page updates L1 - Z4, Z6, Z8 Specs G5 updates',
    estimation: 3,
    client: listOfClient.elementAt(0),
  ),
  Job(
    id: 'c2',
    number: 85598,
    title: 'Home page build',
    estimation: 1,
    client: listOfClient.elementAt(1),
  ),
  Job(
    id: 'c3',
    number: 88066,
    title: '00060021 - localization - Z Experience for Israel - 4 pages',
    estimation: 16,
    client: listOfClient.elementAt(0),
  )
];
