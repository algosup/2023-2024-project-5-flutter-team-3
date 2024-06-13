import 'package:adopte_a_candidate/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompanyMessageList extends StatefulWidget {
  CompanyMessageList({super.key});

  @override
  State<CompanyMessageList> createState() => _CompanyMessageListState();
}

class _CompanyMessageListState extends State<CompanyMessageList> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<List<String>> applicants = [
      ['9011', AppLocalizations.of(context)!.offerName0, "17:43", AppLocalizations.of(context)!.exampleMessage0],
      ['12', AppLocalizations.of(context)!.offerName1, "12:03", AppLocalizations.of(context)!.exampleMessage1],
      ['143', AppLocalizations.of(context)!.offerName2, "11:32", AppLocalizations.of(context)!.exampleMessage2],
      ['1514', AppLocalizations.of(context)!.offerName3, "17:34", AppLocalizations.of(context)!.exampleMessage3],
      ['8515', AppLocalizations.of(context)!.offerName4, "8:09", AppLocalizations.of(context)!.exampleMessage4],
      ['3516', AppLocalizations.of(context)!.offerName5, "1:43", AppLocalizations.of(context)!.exampleMessage5],
      ['7597', AppLocalizations.of(context)!.offerName6, "16:40", AppLocalizations.of(context)!.exampleMessage6],
      ['510', AppLocalizations.of(context)!.offerName7, "14:52", AppLocalizations.of(context)!.exampleMessage7],
      ['4519', AppLocalizations.of(context)!.offerName8, "14:18", AppLocalizations.of(context)!.exampleMessage8],
      ['750', AppLocalizations.of(context)!.offerName9, "8:49", AppLocalizations.of(context)!.exampleMessage9],
      ['9521', AppLocalizations.of(context)!.offerName10, "17:23", AppLocalizations.of(context)!.exampleMessage10],
      ['7522', AppLocalizations.of(context)!.offerName11, "9:09", AppLocalizations.of(context)!.exampleMessage11],
      ['602', AppLocalizations.of(context)!.offerName12, "7:43", AppLocalizations.of(context)!.exampleMessage12],
      ['494', AppLocalizations.of(context)!.offerName13, "10:30", AppLocalizations.of(context)!.exampleMessage13],
    ];
    return Expanded(
      child: Container(
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
              itemCount: applicants.length,
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Applicant #${applicants[index][0]}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                applicants[index][1],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                applicants[index][3],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                applicants[index][2],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
