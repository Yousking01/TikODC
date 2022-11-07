// import 'package:flutter/material.dart';

// import 'buttons.dart';

// class PostTemplate extends StatelessWidget {
//   const PostTemplate(
//       {super.key,
//       required this.username,
//       required this.videoDescription,
//       required this.numberOfLikes,
//       required this.numberOfComments,
//       required this.numberOfShares,
//       this.userPost});

//   final String username;
//   final String videoDescription;
//   final String numberOfLikes;
//   final String numberOfComments;
//   final String numberOfShares;
//   final userPost;

//   // PostTemplate({
//   //   required this.username,
//   //   required this.videoDescription,
//   //   required this.numberOfLikes,
//   //   required this.numberOfComments,
//   //   required this.numberOfShares,
//   //   required this.userPost,
//   // });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           //User post (at the very back)

//           userPost,

//           //User name and caption
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//               alignment: Alignment(-1, 1),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     '@' + username,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                             text: videoDescription,
//                             style: TextStyle(color: Colors.white)),
//                         TextSpan(
//                           text: '#yousking #Music',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Buttons
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Container(
//               alignment: Alignment(1, 1),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   MonButton(
//                     icon: Icons.favorite,
//                     number: numberOfLikes,
//                   ),
//                   MonButton(
//                       icon: Icons.chat_bubble_outlined,
//                       number: numberOfComments),
//                   MonButton(
//                     icon: Icons.share,
//                     number: numberOfShares,
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
