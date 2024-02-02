import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class percentage extends StatelessWidget {
  const percentage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: MediaQuery.sizeOf(context).width / 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          leftTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            // getTextStyles: (value) => const TextStyle(
                            //   color: Colors.grey,
                            //   fontWeight: FontWeight.bold,
                            //   fontSize: 14,
                            // ),
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 1:
                                  return '10%';
                                case 2:
                                  return '20%';
                                case 3:
                                  return '30%';
                                case 4:
                                  return '40%';
                                case 5:
                                  return '50%';
                                case 6:
                                  return '60%';
                                default:
                                  return '';
                              }
                            },
                          ),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            // getTextStyles: (value) => const TextStyle(
                            //   color: Colors.grey,
                            //   fontWeight: FontWeight.bold,
                            //   fontSize: 14,
                            // ),
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 0:
                                  return '2023';
                                case 1:
                                  return '2024';
                                case 2:
                                  return '2025';
                                case 3:
                                  return '2026';
                                case 4:
                                  return '2027';
                                case 5:
                                  return '2028';
                                case 6:
                                  return '2029';
                                default:
                                  return '';
                              }
                            },
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                              color: const Color(0xff37434d), width: 1),
                        ),
                        minX: 0,
                        maxX: 6,
                        minY: 0,
                        maxY: 6,
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 3),
                              FlSpot(1, 1),
                              FlSpot(2, 4),
                              FlSpot(3, 2),
                              FlSpot(4, 5),
                              FlSpot(5, 4),
                              FlSpot(6, 2),
                            ],
                            isCurved: true,
                            colors: [
                              Colors.yellow
                            ], // Set the color for the first line
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 1),
                              FlSpot(1, 4),
                              FlSpot(2, 2),
                              FlSpot(3, 5),
                              FlSpot(4, 3),
                              FlSpot(5, 2),
                              FlSpot(6, 4),
                            ],
                            isCurved: true,
                            colors: [
                              Color(0xFF121858)
                            ], // Set the color for the second line
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 2.23,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total No.Of Users',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'New Users        : 57',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Existing Users   : 326',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Users left       : 32',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width:
                      120.0, // Adjust the width to fit the CircularPercentIndicator
                  height:
                      120.0, // Adjust the height to fit the CircularPercentIndicator
                  child: CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 10.0,
                    percent: 0.75,
                    center: const Text(
                      "+0.8%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.orange,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '+0.8% than last year',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 2.23,
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total No.Of Vendors',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'New Vendors        : 57',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Existing Vendors   : 326',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Vendors left       : 32',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width:
                      120.0, // Adjust the width to fit the CircularPercentIndicator
                  height:
                      120.0, // Adjust the height to fit the CircularPercentIndicator
                  child: CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 10.0,
                    percent: 0.75,
                    center: const Text(
                      "+0.2%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.orange,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '+0.2% than last year',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

// ... (The rest of your chart-related code remains the same)

  // swapAnimationDuration: const Duration(milliseconds: 250),
  // data: sampleData1,

// LineChartData get sampleData1 => LineChartData(
//   gridData: gridData,
//   titlesData: titlesData,
//   borderData: boarderData,
//   lineBarsData: lineBarsData,
//   minX: 0,
//   maxX: 27,
//   minY: 0,
//   maxY: 5,
// );

// List<LineChartBarData> get lineBarsData =>[
//   lineChartBarData1,
//   lineChartBarData2,

// ];
// FlTitlesData get titlesData => FlTitlesData(
//   bottomTitles: AxisTitles(
//     sideTitles: bottomTitles,
//   ),
//   rightTitles:const  AxisTitles(
//     sideTitles: SideTitles(showTitles: false),
//   ),
//   topTitles: const AxisTitles(
//     sideTitles: SideTitles(showTitles: false),
//   ),
//   leftTitles: AxisTitles(
//     sideTitles: leftTitles()
//   )
// );

// Widget leftTitlesWidget(double value, TitleMeta meta){
//   const style = TextStyle(
//     fontSize: 15,
//     fontWeight: FontWeight.bold,

//   );
//   String text;
//   switch (value.toInt()){
//     case 1:
//       text = '20%';
//       break;
//     case 2:
//       text = '40%';
//       break;
//     case 3:
//       text = '60%';
//       break;
//     case 4:
//       text = '80%';
//       break;
//     case 5:
//       text = '100%';
//       break;
//       default:
//         return Container();

//   }
//   return Text(text, style: style, textAlign: TextAlign.center);

// }
// SideTitles leftTitles() {
//     return const SideTitles(
//       showTitles: true,
//       // showTitles: leftTitlesWidget,
//       interval: 1,
//       reservedSize: 40
// );
// }

// Widget bottomTitlesWidgets(double value, TitleMeta meta) {
//   const style = TextStyle(
//     fontSize: 15,
//     fontWeight: FontWeight.bold,
//   );
//   Widget text;
//   switch (value.toInt()) {
//     case 2:
//       text = const Text('2018', style: style);
//       break;
//     case 7:
//       text = const Text('2019', style: style);
//       break;
//     case 12:
//       text = const Text('2020', style: style);
//       break;
//     case 17:
//       text = const Text('2021', style: style);
//       break;
//     case 22:
//       text = const Text('2022', style: style);
//       break;
//     case 27:
//       text = const Text('2023', style: style);
//       break;
//     default:
//       return Container();
//   }
//   return text;
// }

// SideTitles get bottomTitles =>  const SideTitles(
//   showTitles: true,
//   reservedSize: 32,
//   interval: 1,
//   // getTitlesWidget: bottomTitlesWidgets,
// );

// FlGridData get gridData => const  FlGridData(show: true);

// FlBorderData get boarderData => FlBorderData(
//   show: true,
//   border: const  Border(
//     bottom:
//       BorderSide(color: Colors.grey, width: 4),
//     left:  BorderSide(color: Colors.grey),
//     right: BorderSide(color: Colors.transparent),
//     top:  BorderSide(color: Colors.transparent),

//     ),
// );

// LineChartBarData get lineChartBarData1 => LineChartBarData(
//   isCurved: true,
//   color: Colors.orange,
//   barWidth: 6,
//   isStrokeCapRound: true,
//   dotData:const  FlDotData(show: false),
//   belowBarData: BarAreaData(show: false),
//   spots: const[
//     FlSpot(1,1),
//     FlSpot(3, 1.5),
//     FlSpot(5, 1.6),
//     FlSpot(7, 3.4),
//     FlSpot(10, 2),
//     FlSpot(12, 2.5),
//     FlSpot(13, 1.6),

//   ]

// );

// LineChartBarData get lineChartBarData2 => LineChartBarData(
//   isCurved: true,
//   color: Colors.blueAccent,
//   barWidth: 6,
//   isStrokeCapRound: true,
//   dotData:const FlDotData(show: false),
//   belowBarData: BarAreaData(show: false),
//   spots: const[
//     FlSpot(1,2),
//     FlSpot(3, 1),
//     FlSpot(5, 3),
//     FlSpot(7, 3.4),
//     FlSpot(10, 2.3),
//     FlSpot(12, 2.9),
//     FlSpot(13, 3),

//   ]

//  );

//  }
}
