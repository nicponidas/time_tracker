import 'package:flutter/material.dart';
import 'package:time_tracker/models/job.dart';
import 'package:time_tracker/widgets/client_drop_down.dart';

class AddJobScreen extends StatefulWidget {
  const AddJobScreen({super.key, this.job});
  final Job? job;

  @override
  State<AddJobScreen> createState() => _AddJobScreenState();
}

class _AddJobScreenState extends State<AddJobScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController jobNumber = TextEditingController();
  final TextEditingController jobName = TextEditingController();
  final TextEditingController jobEstimation = TextEditingController();

  TextEditingController setJobTitle(Job? job) {
    if (job == null) {
      return jobName;
    }
    jobName.text = job.title;
    return jobName;
  }

  TextEditingController setJobNumber(Job? job) {
    if (job == null) {
      return jobNumber;
    }
    jobNumber.text = job.number.toString();
    return jobNumber;
  }

  TextEditingController setEstimation(Job? job) {
    if (job == null) {
      return jobEstimation;
    }
    jobEstimation.text = job.estimation.toString();
    return jobEstimation;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add job'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: setJobNumber(widget.job),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please put number of job';
                    }
                    return value;
                  },
                  decoration: const InputDecoration(
                      label: Text('Job number'), border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: setJobTitle(widget.job),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please put name of job';
                    }
                    return value;
                  },
                  decoration: const InputDecoration(
                      label: Text('Job name'), border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: setEstimation(widget.job),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please put estimation of job';
                    }
                    return value;
                  },
                  decoration: const InputDecoration(
                      label: Text('Job estimation'),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ClientDropDown(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'ANULUJ',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // debugPrint('ok');
                          Navigator.of(context).pop();
                          debugPrint(const ClientDropDown().key.toString());
                        }
                      },
                      child: const Text(
                        'ZAPISZ',
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
