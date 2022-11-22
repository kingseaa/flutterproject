
//                                 //appbar
// // Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Row(
// //                   children: [SvgPicture.asset('icons/back.svg'), Text('BACK')],
// //                 ),
// //                 SvgPicture.asset('assets/icons/search1.svg')
// //               ],
// //             ),

// //             //listFood
// //             const SizedBox(
// //               height: 46,
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               children: const [
// //                 Text(
// //                   'Salads',
// //                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
// //                 ),
// //               ],
// //             ),
// //             const SizedBox(
// //               height: 39,
// //             ),
//                             print('day la giua')

//                                       //giua
//                                         body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 38),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             children: [
// //               Container(
// //                   child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Text('Text'),
// //                       Text('Text'),
// //                     ],
// //                   ),

// //                   Text('Text'),

// //                   //   InkWell(onTap: () {
// //                   // },child: SvgPicture.asset('assets/icons/search1.svg', height: 10, width: 10,fit: BoxFit.scaleDown,))
// //                 ],
// //               )),
// //               Text('Salads'),
// //               SizedBox(
// //                 height: 50,
// //               ),
// //               FutureBuilder(
// //                 future: fetchFoods(),
// //                 builder: (BuildContext context, AsyncSnapshot snapshot) {
// //                   if (snapshot.hasData) {
// //                     return ListView.builder(
// //                       itemCount: 2,
// //                       itemBuilder: (BuildContext context, int index) {
// //                         return Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Container(
// //                               margin: EdgeInsets.only(left: 5),
// //                               height: 245,
// //                               width: 335,
// //                               decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(10),
// //                                   color: Colors.white,
// //                                   boxShadow: const [
// //                                     BoxShadow(
// //                                       offset: Offset(0, 2),
// //                                       color: Colors.black38,
// //                                       blurRadius: 7,
// //                                     )
// //                                   ]),
// //                               child: Stack(
// //                                 children: [
// //                                 Positioned(
// //                                     top: -10,
// //                                     right: 10,
// //                                     child: Image.asset(
// //                                       snapshot.data[index].img,
// //                                       height: 100,
// //                                       width: 100,
// //                                     ))
// //                               ]),
// //                             )
// //                           ],
// //                         );
// //                       },
// //                     );
// //                   } else if (snapshot.hasError) {
// //                     return const Center(child: Text('not found data'));
// //                   } else {
// //                     return const Center(child: CircularProgressIndicator());
// //                   }
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),


//                 print('giua 2')
                
// // Stack(
// //                       clipBehavior: Clip.none,
// //                       children: <Widget>[
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(10),
// //                             color: Colors.white,
// //                             boxShadow: const [
// //                               BoxShadow(
// //                                 color: Colors.black45,
// //                                 offset: Offset(2, 2),
// //                                 blurRadius: 4,
// //                               ),
// //                             ],
// //                           ),
// //                           margin: const EdgeInsets.only(left: 38, bottom: 22),
// //                           width: 317,
// //                           height: 153,
// //                           child: Container(
// //                             margin: const EdgeInsets.only(left: 28, top: 10),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Container(
// //                                     width: 120,
// //                                     child: Text(
// //                                       snapshot.data[index].name,
// //                                       style: const TextStyle(
// //                                         fontSize: 20,
// //                                         fontWeight: FontWeight.w600,
// //                                       ),
// //                                     )),
// //                                 Container(
// //                                     width: 140,
// //                                     margin: const EdgeInsets.only(top: 10),
// //                                     child: Text(snapshot.data[index].desc,
// //                                         style: const TextStyle(
// //                                             fontSize: 8,
// //                                             fontWeight: FontWeight.w400,
// //                                             height: 1.6))),
// //                                 Container(
// //                                     margin: const EdgeInsets.only(top: 2),
// //                                     child:
// //                                         Text('${snapshot.data[index].cal} CAL',
// //                                             style: const TextStyle(
// //                                               fontSize: 6,
// //                                               fontWeight: FontWeight.w700,
// //                                             ))),
// //                                 Container(
// //                                     margin: const EdgeInsets.only(top: 10),
// //                                     child: Text(
// //                                         '\$ ${snapshot.data[index].price}',
// //                                         style: const TextStyle(
// //                                             fontSize: 23,
// //                                             fontWeight: FontWeight.w700,
// //                                             color: Color(0xff59C885)))),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           top: 15,
// //                           left: 192,
// //                           child: ClipOval(
// //                             child: Container(
// //                               width: 95,
// //                               height: 95,
// //                               color: const Color(0xffF8FFFB),
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           top: -5,
// //                           left: 233,
// //                           child: ClipOval(
// //                             child: Container(
// //                               child: Image.asset(snapshot.data[index].img),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     )