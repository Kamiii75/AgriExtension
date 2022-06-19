import 'package:agri_app/core/constants/constants.dart';
import 'package:agri_app/core/models/cardModel.dart';
import 'package:agri_app/ui/screens/main/mainVM.dart';
import 'package:agri_app/ui/screens/weather/service/get_location_data.dart';
import 'package:agri_app/ui/screens/weather/service/get_weather_data.dart';
import 'package:agri_app/ui/widgets/dashboard_weather_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'weatherVM.dart';

class WeatherPage extends StatelessWidget {
  final CardModel cardModel;


  const WeatherPage({Key? key, required this.cardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    var sunrise = DateTime.fromMillisecondsSinceEpoch(int.parse(
        Provider.of<GetWeatherData>(context, listen: true).getsunrise!))
        .toString();
    var sunset = DateTime.fromMillisecondsSinceEpoch(int.parse(
        Provider.of<GetWeatherData>(context, listen: true).getsunset!))
        .toString();
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(), child:
    Consumer<WeatherProvider>(
        builder: (context, weather, child) {
          return Scaffold(

            backgroundColor: Colors.white,

            body: Container(
              decoration: const BoxDecoration(
                gradient: gradient,
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ListTile(

                      leading: const BackButton(
                        color: Colors.white,

                      ),


                      title: Text(
                        cardModel.title,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w600,color: Colors.white),
                      ),


                    ),),
                  Expanded(
                    flex: 4,
                    child: AspectRatio(
                    aspectRatio: 2,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,

                          child: Hero(
                            tag: cardModel.title,
                            child:  Visibility(
                              visible: true,
                              child: DashWeatherCard(
                                description: Provider.of<GetWeatherData>(context, listen: true)
                                    .getdescription,
                                icon:
                                Provider.of<GetWeatherData>(context, listen: true).geticon,
                                temp:
                                Provider.of<GetWeatherData>(context, listen: true).gettemp,
                                feeltemp: Provider.of<GetWeatherData>(context, listen: true)
                                    .getfeeltemp,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                ),
                  ),
                    Expanded(
                      flex: 12,
                      child:  SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SafeArea(
                            child: Column(
                              children: [


                                SizedBox(height: 30),
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(19),
                                                topRight: Radius.circular(19),
                                                bottomLeft: Radius.circular(19),
                                                bottomRight: Radius.circular(19),
                                              ),
                                              color: Color.fromRGBO(248, 248, 248, 1),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(9.0),
                                              child: Image.asset(
                                                "assets/image/rain.png",
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).gethumidity}%',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(0, 0, 0, 0.8299999833106995),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                height: 1),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration:const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(19),
                                                topRight: Radius.circular(19),
                                                bottomLeft: Radius.circular(19),
                                                bottomRight: Radius.circular(19),
                                              ),
                                              color: Color.fromRGBO(248, 248, 248, 1),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(7.0),
                                              child: Image.asset(
                                                "assets/image/windicon.png",
                                              ),
                                            ),
                                          ),
                                         const SizedBox(height: 10),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).getpressure} hPa',
                                            textAlign: TextAlign.left,
                                            style:const TextStyle(
                                                color:
                                                Color.fromRGBO(0, 0, 0, 0.8299999833106995),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                height: 1),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration:const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(19),
                                                topRight: Radius.circular(19),
                                                bottomLeft: Radius.circular(19),
                                                bottomRight: Radius.circular(19),
                                              ),
                                              color: Color.fromRGBO(248, 248, 248, 1),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/image/himudity.png",
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).getwindSpeed} m/s',
                                            textAlign: TextAlign.left,
                                            style:const TextStyle(
                                                color:
                                                Color.fromRGBO(0, 0, 0, 0.8299999833106995),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                height: 1),
                                          )
                                        ],
                                      )
                                    ]),
                                SizedBox(height: 25),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 68,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(49),
                                          topRight: Radius.circular(49),
                                          bottomLeft: Radius.circular(49),
                                          bottomRight: Radius.circular(49),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(75, 135, 226, 0.25),
                                              offset: Offset(2, 4),
                                              blurRadius: 15)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            'Max',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Image.asset("assets/image/maxtemp.png"),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).getmaxtemp} \u2103',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 68,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(49),
                                          topRight: Radius.circular(49),
                                          bottomLeft: Radius.circular(49),
                                          bottomRight: Radius.circular(49),
                                        ),
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                -0.4579692482948303, 0.5420307517051697),
                                            end: Alignment(
                                                -0.5420307517051697, -0.7420307517051697),
                                            colors: [
                                              Color.fromRGBO(128, 110, 248, 1),
                                              Color.fromRGBO(181, 151, 255, 1)
                                            ]),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            'Min',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                height: 1),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Image.asset("assets/image/mintemp.png"),
                                          ),
                                          SizedBox(height: 9),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).getmintemp} \u2103',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800,
                                                height: 1),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 68,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(49),
                                          topRight: Radius.circular(49),
                                          bottomLeft: Radius.circular(49),
                                          bottomRight: Radius.circular(49),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(75, 135, 226, 0.25),
                                              offset: Offset(2, 4),
                                              blurRadius: 15)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            'Avg',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Image.asset("assets/image/avgtemp.png"),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).gettemp} \u2103',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 68,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(49),
                                          topRight: Radius.circular(49),
                                          bottomLeft: Radius.circular(49),
                                          bottomRight: Radius.circular(49),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(75, 135, 226, 0.25),
                                              offset: Offset(2, 4),
                                              blurRadius: 15)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                            'Feel',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset("assets/image/feeltemp.png"),
                                          ),
                                          SizedBox(height: 0),
                                          Text(
                                            '${Provider.of<GetWeatherData>(context, listen: true).getfeeltemp} \u2103',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                Color.fromRGBO(2, 31, 77, 0.5899999737739563),
                                                fontFamily: 'Hind',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                height: 1),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Column(children: [
                                  Container(
                                    height: 95,
                                    width: MediaQuery.of(context).size.width / 1.1,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.07999999821186066),
                                            offset: Offset(0, 4),
                                            blurRadius: 25)
                                      ],
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Image.asset(
                                              "assets/image/sunrise.png",
                                              height: 57,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Text(
                                                'Sunrise      ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(88, 150, 253, 1),
                                                    fontFamily: 'Nunito Sans',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                    height: 1),
                                              ),
                                            ),
                                          ]),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 15),
                                            child: Text(
                                              sunrise,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.33000001311302185),
                                                  fontFamily: 'Hind',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 85,
                                    width: MediaQuery.of(context).size.width / 1.1,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.07999999821186066),
                                            offset: Offset(0, 4),
                                            blurRadius: 25)
                                      ],
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Image.asset(
                                              "assets/image/sunset.png",
                                              height: 55,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 13.0),
                                              child: Text(
                                                'Sunset      ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(88, 150, 253, 1),
                                                    fontFamily: 'Nunito Sans',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                    height: 1),
                                              ),
                                            ),
                                          ]),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 15),
                                            child: Text(
                                              sunset,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.33000001311302185),
                                                  fontFamily: 'Hind',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 85,
                                    width: MediaQuery.of(context).size.width / 1.1,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.07999999821186066),
                                            offset: Offset(0, 4),
                                            blurRadius: 25)
                                      ],
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Image.asset(
                                              "assets/image/windicon.png",
                                              height: 80,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Text(
                                                'Wind (Speed)',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(88, 150, 253, 1),
                                                    fontFamily: 'Nunito Sans',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                    height: 1),
                                              ),
                                            ),
                                          ]),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 15),
                                            child: Text(
                                              "${Provider.of<GetWeatherData>(context, listen: true).getwindSpeed!} m/s",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.33000001311302185),
                                                  fontFamily: 'Hind',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 85,
                                    width: MediaQuery.of(context).size.width / 1.1,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.07999999821186066),
                                            offset: Offset(0, 4),
                                            blurRadius: 25)
                                      ],
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 38),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Image.asset(
                                              "assets/image/winddeg.png",
                                              height: 55,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Text(
                                                'Wind (Deg)',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(88, 150, 253, 1),
                                                    fontFamily: 'Nunito Sans',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                    height: 1),
                                              ),
                                            ),
                                          ]),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 15),
                                            child: Text(
                                              "${Provider.of<GetWeatherData>(context, listen: true).getwinddeg!}",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.33000001311302185),
                                                  fontFamily: 'Hind',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],),
                                SizedBox(height: 60),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ]
                ),
              ),
            ),
          );
        }),);
  }
}
