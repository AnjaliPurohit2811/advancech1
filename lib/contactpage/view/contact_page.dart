
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blue,
          ),
          title: Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 55),
              child: Text(
                'If you have any queries, get in touch with\n\t\t\t\t\t\t\tus. We will be happy to help you!',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 50),
              child: InkWell(
                onTap: () {
                  Uri uri = Uri.parse('tel: +91 9601046183');
                  launcher.launchUrl(uri);
                },
                child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.shade200, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.phone_android,
                          size: 35,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '+91 1234567890',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: InkWell(
                onTap: () {
                  Uri uri = Uri.parse('mailto: anjalipurohit2811@gmail.com');
                  launcher.launchUrl(uri);
                },
                child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.shade200, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.mail_outline,
                          size: 35,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'info@xyzmail.com',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: InkWell(
                onTap: () {
                  Uri uri = Uri.parse('sms: +91 9601046183');
                  launcher.launchUrl(uri);
                },
                child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.blue.shade200, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.sms_outlined,
                          size: 35,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '+91 123456789',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 55),
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Text(
                      'Social Media',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5,),
                    Divider(height: 2, color: Colors.blue.shade200,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15 , left: 30),
                      child: InkWell(
                        onTap: () {
                          Uri uri = Uri.parse('https://www.linkedin.com/in/anjali-purohit-9405132a9/',);
                          launcher.launchUrl(uri);
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/img/l.png'))),
                            ),
                            SizedBox(width: 20,),
                            Text('LinkdIn' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 20,indent: 20, endIndent: 20, color: Colors.blue.shade200,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15 , left: 30),
                      child: InkWell(
                        onTap: () {
                          Uri uri = Uri.parse('https://github.com/AnjaliPurohit2811',);
                          launcher.launchUrl(uri);
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/img/g.png'))),
                            ),
                            SizedBox(width: 20,),
                            Text('Github' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
