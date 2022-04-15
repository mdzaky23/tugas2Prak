import 'package:flutter/material.dart';
import 'package:flutter_application_5/profilepage.dart';
import 'package:flutter_application_5/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  },
                ),
              ),
              Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://www.canva.com/design/DAE99nYLgh8/8HcWaYQKy3Ebk1OhLIBpqw/view?utm_content=DAE99nYLgh8&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink'),
                      )),
                  child: Center(
                    child: Text(
                      'CHAIDAR ELEKTRONIK',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://3.bp.blogspot.com/-0uNuC1iQrKA/V2T13FanTKI/AAAAAAAABdg/fVuhwdVOn7IkdmMghpFfkHspvJhXs_ouwCLcB/s1600/hardisk-eksternal.jpg'),
                        )),
                    child: Center(
                      child: Text(
                        'Hardisk',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/6/6f/Super_Talent_2.5in_SATA_SSD_SAM64GM25S.jpg'),
                        )),
                    child: Center(
                      child: Text(
                        'SSD',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
