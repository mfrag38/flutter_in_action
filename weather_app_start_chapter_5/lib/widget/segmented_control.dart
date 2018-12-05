import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  final Key key;
  final List<String> segments;
  final onSelectionChanged;
  final bool editable;
  final int initialSelectionIndex;

  SegmentedControl(
      this.segments, {
        this.key,
        this.onSelectionChanged,
        this.editable = true,
        this.initialSelectionIndex = 0,
      }) : super(key: key);

  @override
  _SegmentedControlState createState() => new _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int selectedIndex;

  handleSelect(int widgetNum) {
    setState(() => selectedIndex = widgetNum);
    widget.onSelectionChanged(widgetNum);
  }

  Color isEditable() {
    if (widget.editable) {
      return Theme.of(context).primaryColor;
    } else {
      return Colors.grey[500];
    }
  }

  List<Widget> createSegments() {
    if (widget?.segments?.isEmpty == true) {
      return [];
    }
    var lastSegment = widget.segments?.last;
    if (lastSegment == null) return [];
    List<Color> childBorders = [];

    var selectedIndex = this.selectedIndex ?? widget.initialSelectionIndex;

    List<Widget> segmentWidgets = [];
    widget.segments.forEach((segment) {
      int idx = widget.segments.indexOf(segment);

      if (segment == lastSegment) {
        childBorders.add(Colors.transparent);
      } else {
        childBorders.add(isEditable());
      }

      segmentWidgets.add(
        new Expanded(
          child: new InkWell(
            onTap: widget.editable
                ? () => handleSelect(widget.segments.indexOf(segment))
                : null,
            child: new Container(
              padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              decoration: new BoxDecoration(
                color: selectedIndex == widget.segments.indexOf(segment)
                    ? isEditable()
                    : Colors.white,
                border: new Border(
                    right: new BorderSide(
                        color: childBorders[
                        idx]) // hide right border on last child
                ),
              ),
              child: new Text(
                segment,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: selectedIndex == widget.segments.indexOf(segment)
                      ? Colors.white
                      : isEditable(),
                ),
              ),
            ),
          ),
        ),
      );
    });

    return segmentWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 5.0),
      decoration: new BoxDecoration(
        border: new Border.all(color: isEditable(), width: 1.3),
        borderRadius: new BorderRadius.all(const Radius.circular(3.5)),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: createSegments(),
      ),
    );
  }
}
