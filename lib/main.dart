import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        fontFamily: 'HostGrotesk',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            // First horizontal ListView with web images
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1731262785082-3f1d23b75379?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw1fHx8ZW58MHx8fHx8',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.network(
                    'https://images.unsplash.com/photo-1719937206168-f4c829152b91?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.network(
                    'https://images.unsplash.com/photo-1731595634176-4d8186c944ab?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // ListTile widgets with different fontFamily variations
            ListTile(
              title: Text('Regular Font', style: TextStyle(fontFamily: 'HostGrotesk')),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Bold Font', style: TextStyle(fontFamily: 'HostGrotesk', fontWeight: FontWeight.bold)),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Italic Font', style: TextStyle(fontFamily: 'HostGrotesk', fontStyle: FontStyle.italic)),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Default Font', style: TextStyle(fontFamily: 'Roboto')),
              leading: Icon(Icons.star),
            ),
            SizedBox(height: 16),

            // Second horizontal ListView with local images
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/image1.avif',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/images/image2.avif',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/images/image3.avif',
                    width: 450,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
