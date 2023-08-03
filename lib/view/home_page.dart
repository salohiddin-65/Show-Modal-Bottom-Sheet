import 'package:flutter/material.dart';
import 'package:show_modal_bottom_sheet/core/extension/build_context.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String text;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 20, 60, 1),
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: const Color.fromRGBO(255, 99, 71, 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        SizedBox(height: context.height * 0.015),
                        AppBar(
                          iconTheme: const IconThemeData(color: Colors.black),
                          title: const Text(
                            "Country",
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          actions: [
                            const Icon(Icons.search),
                            SizedBox(width: context.width * 0.045),
                          ],
                        ),
                        SizedBox(height: context.height * 0.005),
                        const Divider(color: Colors.black),
                        Expanded(
                          child: ListView.builder(
                            itemCount: regions.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    text = codePhoneNum[index];
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                    debugPrint(text = codePhoneNum[index]);
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: ListTile(
                                  leading: const CircleAvatar(),
                                  title: Text(regions[index].toString()),
                                  trailing:
                                      Text(codePhoneNum[index].toString()),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: context.width * 0.9,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Country",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Show Modal Bottom Sheet
List regions = [
  "United Kingdom",
  "Saudi Arabia",
  "United Arab Emirates",
  "Uzbekistan",
  "Argentina",
  "Azerbaijan",
  "Australia",
  "Germany",
  "Brazil",
];

// Code Phone Number
List codePhoneNum = [
  "971",
  "966",
  "971",
  "998",
  "54",
  "994",
  "61",
  "49",
  "55",
];
