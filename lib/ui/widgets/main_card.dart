
import 'package:app/ui/screens/home/components/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../core/models/districtModel.dart';




class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.district,
    required this.press,
  }) : super(key: key);

  final DistrictModel district;

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
                tag: district.title!,
                child: Image.asset(district.image!),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  district.title!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.w600,color: Colors.white),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
