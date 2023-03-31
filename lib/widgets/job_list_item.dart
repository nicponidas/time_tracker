import 'package:flutter/material.dart';
import 'package:time_tracker/data/list_of_jobs.dart';
import 'package:time_tracker/models/job.dart';
import 'package:time_tracker/screens/add_job_screen.dart';

class JobsListItem extends StatelessWidget {
  const JobsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddJobScreen(),
            ),
          ),
          child: JobItem(
            job: listOfJobs.elementAt(index),
          ),
        ),
      ),
      itemCount: listOfJobs.length,
    );
  }
}

class JobItem extends StatelessWidget {
  const JobItem({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          job.client.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${job.number}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            job.title,
          ),
        ],
      ),
      subtitle: Text(
        'Estimation: ${job.estimation}',
      ),
      trailing: IconButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddJobScreen(job: job),
          ),
        ),
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
