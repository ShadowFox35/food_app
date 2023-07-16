// import 'package:core_ui/core_ui.dart';
// import 'package:core_ui/widgets/buttons/add_to_cart_button.dart';
// import 'package:data/data.dart';
// import 'package:features/dish/widget/dish_counter.dart';
// import 'package:flutter/material.dart';

// class DishForm extends StatelessWidget {
//   final List<MenuItemModel> dish;

//   const DishForm({
//     required this.dish,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {


//     return Stack(
//       children: [
//         Scaffold(
//           body: SafeArea(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: AppDimens.size_280,
//                   child: Image.asset(
//                     ImagePaths.logoImage,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: AppDimens.padding_25),
//                   margin: const EdgeInsets.only(top: AppDimens.padding_10),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'Cookie Sandwich',
//                           style: AppFonts.normal_18,
//                         ),
//                         Text(
//                           'Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.',
//                           style: AppFonts.normal_16,
//                         ),
//                         Text('Ingredients', style: AppFonts.normal_16),
//                       ]),
//                 ),
//                 const DishCounter(),
//                 const AddButton(),
//               ],
//             ),
//           ),
//         ),
//         Scaffold(
//           backgroundColor: Colors.transparent,
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             iconTheme: const IconThemeData(
//               color: Colors.red,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
