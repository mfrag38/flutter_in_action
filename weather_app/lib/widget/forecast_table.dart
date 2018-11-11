import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';

class ForecastTableView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.caption;
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        bottom: 48.0,
      ),
      child: Table(
        columnWidths: {
          0: FixedColumnWidth(100.0),
          2: FixedColumnWidth(20.0),
          3: FixedColumnWidth(20.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: List.generate(7, (int index) {
          return TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Monday",
                    style: textStyle,
                  ),
                ),
              ),
              TableCell(
                child: Icon(
                  Icons.wb_sunny,
                  color: AppColor.textColor,
                  size: 16.0,
                ),
              ),
              TableCell(
                child: Text(
                  '15',
                  style: textStyle,
                ),
              ),
              TableCell(
                child: Text(
                  '3',
                  style: textStyle.copyWith(
                    color: Colors.black26,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
