import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  // const Detail({Key? key}) : super(key: key);
  final String image;
  final String name;
  final String price;

  const Detail({
    required this.image,
    required this.name,
    required this.price,
  });
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  int count = 1;

  void increase() {
    this.count += 1;
  }

  void decrease() {
    if (this.count > 1) {
      this.count -= 1;
    }
  }

  void confirm(String select, int price) {
    int total = price * this.count;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Confirm buy?'),
            content: Text(select + '\n' + 'Price : \$' + '$total'),
            actions: [
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('CANCEL'),
              ),
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                  success();
                },
                child: Text('BUY'),
              ),
            ],
          ),
        );
      },
    );
  }

  void success() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Yey, anda berhasil memesan!',
                    style: TextStyle(fontSize: 15, color: Color(0xFFFF9D72)),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Pesanan anda telah kami proses :)'),
                ),
              )
            ],
          );
        });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F1F8),
      body: Container(
        margin: EdgeInsets.all(10),
        width: 400,
        height: 150,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.image,
                    height: 60,
                  ),
                ),
                Text(
                  widget.name,
                  style: TextStyle(color: Color(0xFF424242), fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 9, bottom: 9),
                  child: Container(
                    child: Text(
                      '\$' + widget.price,
                      style: TextStyle(
                          color: Color(0xFFFF9D72),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          decrease();
                        });
                      },
                      child: Icon(Icons.remove_circle),
                    ),
                    Container(
                      width: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$count'),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          increase();
                        });
                      },
                      child: Icon(Icons.add_circle),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      confirm(widget.name, int.parse(widget.price));
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text('Buy'),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF9D72),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
