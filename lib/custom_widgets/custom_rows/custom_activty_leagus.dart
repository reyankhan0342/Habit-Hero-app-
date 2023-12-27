// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomActivtyLeagus extends StatefulWidget {
  final AssetImage image1;

  final Text title;
  VoidCallback OnTap;

  final Text owner;
  final Text categries;
  final Text goal;

  CustomActivtyLeagus(
      {required this.image1,
        required this.OnTap,
      required this.title,
      required this.owner,
      required this.categries,
      required this.goal});

  @override
  State<CustomActivtyLeagus> createState() => _CustomActivtyLeagusState();
}

class _CustomActivtyLeagusState extends State<CustomActivtyLeagus> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 6,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 190,
        width: size.width*0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: GestureDetector(
          onTap: widget.OnTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(widget.image1.assetName,
                      width: size.width * 0.3,
                      height: size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: ()
                      {

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: PopupMenuButton(
                          itemBuilder:(BuildContext context)=> [
                            PopupMenuItem(child: Text('setting')),
                            PopupMenuItem(child: Text('number')),
                            PopupMenuItem(child: Text('icons')),
                            PopupMenuItem(child: Text('data')),

                          ]
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.title,
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Owner:',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize:size.width*0.03,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        widget.owner
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Categories:',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        widget.categries,
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Goal:',
                          style: TextStyle(
                              fontFamily: 'public',
                              fontWeight: FontWeight.w700,
                              fontSize: size.width*0.03,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        widget.goal,
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
