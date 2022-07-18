
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../core/models/cardModel.dart';




class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.cardModel,
    required this.press,
  }) : super(key: key);

  final CardModel cardModel;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(

        padding:const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7).withOpacity(.2),
          borderRadius:const  BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Hero(
                tag: cardModel.title,
                child: Image.asset(cardModel.image),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  cardModel.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 14.sp),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
