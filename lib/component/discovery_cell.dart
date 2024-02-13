import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wx_demo/page/discovery/discovery_child_page.dart';

class DiscoveryCell extends StatefulWidget {
  String imageName;
  String title;
  String subTitle;
  String subImageName;

  DiscoveryCell(this.imageName, this.title, this.subTitle, this.subImageName);

  @override
  State<StatefulWidget> createState() => _DiscoveryCellState();
}

class _DiscoveryCellState extends State<DiscoveryCell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('cell onTap  ${widget.title}');
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                DiscoveryChildPage(title: widget.title)));
      },
      child: Container(
        color: Colors.white,
        height: 55,
        width: 550,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left
            Container(
              width: 255,
              height: 55,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  widget.imageName != ''
                      ? Image(image: AssetImage(widget.imageName))
                      : Container(),
                  const SizedBox(width: 15),
                  Text(widget.title)
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(widget.subTitle ?? ''),
                    widget.subImageName != ''
                        ? Image.asset(widget.subImageName)
                        : Container(),
                    const SizedBox(width: 15),
                    const Icon(Icons.add)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
