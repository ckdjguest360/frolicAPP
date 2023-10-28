import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frolic/appbar/Icon.dart';
import 'package:frolic/map/menu/MapMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    
    List<Item > items=[
      
       
      Item(price: 3.5, name: "almaza", iconItem: "img/beer.svg"),
 
Item(price: 4, name: "almaza mexican", iconItem: "img/beer.svg"),
 
 Item(price: 5, name: "heineken", iconItem: "img/beer.svg"),
Item(price: 6, name: "heineken mexican", iconItem: "img/beer.svg"),
Item(price: 6, name: "heineken mexican", iconItem: "img/beer.svg"),
Item(price:4.5, name: "wine glass", iconItem: "img/wine.svg"),
// wine bottle 25$
Item(price:25, name: "wine bottle", iconItem: "img/wine.svg"),
// marguerita 8$
Item(price:8, name: "marguerita", iconItem: "img/wine.svg"),
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// gin basil 8$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// long island 9$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// midori sour 8$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// amaretto sour 8$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// old fashioned 9$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// cocktail regular 8$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// cocktail premium 10$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// tequila shot 3.5$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// tequila gold shot 4$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// doudou shot 3$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// b52 shot 4.5$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// brain damage shot 3.5$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// jager shot 4$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// absent shot 8$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// regular shot 3$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// premium shot 5$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];

// vodka glass 6$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// gin glass 6$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// rum sec 6$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
// add soft drink 1$
// List<Item > items=[Item(price: price, name: name, iconItem: iconItem)];
      
      
      ];
    double width =(MediaQuery.of(context).size.width)*30/100,
            height= (MediaQuery.of(context).size.height)*20/100;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("img/logo.png",
              width: width,
              height: height,
            ),
            const IconsHeader(),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
              "Our Menu\n*Pouring Russian Standard for Vodka, Jose Cuervo's Tequila, Gordon's Gin & Captain Morgan's Rum",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 500,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(height: 0.2,decoration: BoxDecoration(border: Border.all(color: Colors.black,),),);
                },
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        
                        height: 50,
                        child: Row(children: [
                           SvgPicture.asset(
                          items[index].iconItem,
                          width:20,
                          height:20,
                          ),
                          Text(items[index].name),
                          
                        ],),
                      ),
                      Text("${items[index].price} \$"),
                    ],
                  )  ;
                },
                      ),
            ),
        
        ],
      ),
    );
  }
}