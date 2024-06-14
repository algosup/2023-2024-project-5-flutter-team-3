import 'package:adopte_a_candidate/widgets/buttons/modifier_button.dart';
import 'package:adopte_a_candidate/widgets/buttons/valid_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobOfferList extends StatefulWidget {
  JobOfferList({super.key});

  @override
  State<JobOfferList> createState() => _JobOfferListState();
}

class _JobOfferListState extends State<JobOfferList> {
  bool _isEditable = false;

  final List<String> jobOffers = [
    'Job Offer 1',
    'Job Offer 2',
    'Job Offer 3',
    'Job Offer 4',
    'Job Offer 5',
    'Job Offer 6',
    'Job Offer 7',
    'Job Offer 8',
    'Job Offer 9',
    'Job Offer 10',
    'Job Offer 11',
    'Job Offer 12',
    'Job Offer 13',
    'Job Offer 14',
    'Job Offer 15',
    'Job Offer 16',
    'Job Offer 17',
    'Job Offer 18',
    'Job Offer 19',
    'Job Offer 20'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          (_isEditable == false)
              ? modifierButton(
                  onTap: () {
                    debugPrint('Modifier button tapped');
                    setState(() {
                      _isEditable = true;
                    });
                  },
                )
              : ValidButton(
                  onTap: () {
                    debugPrint('Valid button tapped');
                    setState(() {
                      _isEditable = false;
                    });
                  },
                ),
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.42,
            decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                border: Border.all(
                    color: const Color(0xffffd5c2),
                    style: BorderStyle.solid,
                    width: 2.0),
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: jobOffers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      elevation: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffffd5c2),
                                  style: BorderStyle.solid,
                                  width: 2.0)),
                        ),
                        child: ListTile(
                          title: Text(jobOffers[index]),
                          trailing: (_isEditable == false)
                              ? IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios),
                                  onPressed: () {
                                    context.goNamed('edit_job_offer');
                                  })
                              : IconButton(
                                  icon: const Icon(Icons.highlight_off,
                                      color: Colors.red, size: 35),
                                  onPressed: () {
                                    debugPrint('Delete job offer');
                                  },
                                ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
