import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:weddsetgo/Admin%20Flow/Screens/Earnings%20Screen/earnings%20layout.dart';

class BarChartSample extends StatefulWidget {
  const BarChartSample({super.key});

  @override
  State<BarChartSample> createState() => _BarChartSampleState();
}

class _BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    List<String> percentages = [
      '50%',
      '60%',
      '80%',
      '70%',
      '45%',
      '80%',
      '65%'
    ];
    List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.85,
      // height: MediaQuery.of(context).size.height / 4.43,
      height: 260,
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
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Earnings',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => earningslayout(
                                    child: SizedBox(),
                                  )),
                        );
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 164, 164, 164),
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      )),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("Vendor Earnings"), Text("Weddsetgo Earnings")],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300,
                    height: 130,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.center,
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          topTitles: SideTitles(showTitles: false),
                          leftTitles: SideTitles(showTitles: false),
                          rightTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (double value) {
                              if (value >= 0 && value < months.length) {
                                return months[value.toInt()];
                              }
                              return '';
                            },
                          ),
                        ),
                        barGroups: List.generate(
                          percentages.length,
                          (index) {
                            return BarChartGroupData(
                              x: index,
                              barRods: [
                                BarChartRodData(
                                  y: double.parse(percentages[index]
                                          .replaceAll('%', '')) /
                                      100,
                                  colors: [Colors.amber],
                                ),
                              ],
                              showingTooltipIndicators: [0],
                            );
                          },
                        ).map((group) {
                          // Add padding to create space between bars
                          return BarChartGroupData(
                            x: group.x,
                            barRods: group.barRods,
                            showingTooltipIndicators:
                                group.showingTooltipIndicators,
                            // Adjust the padding value as needed
                            barsSpace:
                                46, // You can adjust this value for spacing
                          );
                        }).toList(),
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(0, 167, 32, 32),
                            tooltipPadding: const EdgeInsets.all(0),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              return BarTooltipItem(
                                percentages[groupIndex],
                                const TextStyle(color: Colors.black),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 130,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.center,
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          topTitles: SideTitles(showTitles: false),
                          leftTitles: SideTitles(showTitles: false),
                          rightTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (double value) {
                              if (value >= 0 && value < months.length) {
                                return months[value.toInt()];
                              }
                              return '';
                            },
                          ),
                        ),
                        barGroups: List.generate(
                          percentages.length,
                          (index) {
                            return BarChartGroupData(
                              x: index,
                              barRods: [
                                BarChartRodData(
                                  y: double.parse(percentages[index]
                                          .replaceAll('%', '')) /
                                      100,
                                  colors: [Colors.amber],
                                ),
                              ],
                              showingTooltipIndicators: [0],
                            );
                          },
                        ).map((group) {
                          // Add padding to create space between bars
                          return BarChartGroupData(
                            x: group.x,
                            barRods: group.barRods,
                            showingTooltipIndicators:
                                group.showingTooltipIndicators,
                            // Adjust the padding value as needed
                            barsSpace:
                                46, // You can adjust this value for spacing
                          );
                        }).toList(),
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(0, 167, 32, 32),
                            tooltipPadding: const EdgeInsets.all(0),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              return BarTooltipItem(
                                percentages[groupIndex],
                                const TextStyle(color: Colors.black),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
