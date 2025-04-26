import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:core/style/style.dart';

// void showFaillureSnackbar(BuildContext context, String message) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(
//         message,
//         style: const TextStyle(color: Colors.white),
//       ),
//       backgroundColor: Colors.red,
//     ),
//   );
// }
void showFailureLoading(BuildContext context, {required String message}) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
        backgroundColor: const Color.fromRGBO(250, 220, 219, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // insetPadding: EdgeInsets.zero,
        child: SizedBox(
          width: 250,
          height: 150,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      HugeIcons.strokeRoundedAlert01,
                      color: Colors.red,
                      size: 50.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Erreur rencontrée',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const Gap(15),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        //  SizedBox.square(
        //   dimension: 100,
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Center(
        //         child: SingleChildScrollView(
        //             child: Column(
        //       children: [
        //         const Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.warning_amber,
        //               size: 26,
        //               color: orange,
        //             ),
        //             Gap(5),
        //             Text(
        //               'Erreur',
        //               style: TextStyle(color: orange, fontSize: 18),
        //             ),
        //           ],
        //         ),
        //         const Gap(10),
        //         Text('$message\n'),
        //       ],
        //     ))),
        //   ),
        // ),
        ),
  );
}

// return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.error_outline,
//             color: Colors.red,
//             size: 50.0,
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             'Error Occurred!',
//             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             errorMessage,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ],
//       ),
//     );


