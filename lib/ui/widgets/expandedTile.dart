import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedTile extends StatelessWidget {
  final String title;
  final bool isExp;
  const ExpandedTile({Key? key, required this.title, required this.isExp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color:  Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(10.r)
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Flexible(
                  flex: 4,
                  child:  Text(
                    title,
                    style:const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Icon(
                     isExp
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      size: 25,
                  color: Colors.white,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
