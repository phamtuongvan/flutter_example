import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/model/product.dart';

class ProductDesc extends StatelessWidget {
  final Product product;

  const ProductDesc({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: new ListTile(
            title: new Text(
              product.name,
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: new Text(
              product.brand,
              style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            trailing: new Text(product.price,
                style: new TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow)),
          ),
        ),
        new SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: new Text(
            product.description,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
        ),
        new SizedBox(
          height: 30.0,
        ),
        new Card(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0)),
          color: Colors.white,
          child: new Ink(
            height: deviceSize.height * 0.1,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Your Size",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    new SizedBox(height: 10.0),
                    new RawChip(
                        label: new Text(
                          "M",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.cyan)
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("Color",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    new SizedBox(height: 10.0),
                    new RawChip(
                      label: new Text(
                        "Red Blue",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("Product ID",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    new SizedBox(height: 10.0),
                    new RawChip(
                      label: new Text(
                        "PQ1001",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
