

import 'package:advancech1/utils/image_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:advancech1/gallary/provider/fingerprint.dart';
import 'hide_screen.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.black38,
        leading: const Icon(Icons.menu,color: Colors.black,),
        title: const Text(
          'Gallery',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Albums',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                 Icon(Icons.search , size: 35,color: Colors.grey.shade600,),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) async {
                    if(value == 'Hide Folder'){
                      if(await Provider.of<GalleryProvider>(context , listen: false).checkFingerprint()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HideScreen(),),);
                      }
                    }
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Setting',
                      child: Text('Setting'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Albums',
                      child: Text('Albums'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Hide Folder',
                      child: Text('Hidden'),
                    ),
                  ],
                  child:  Icon(Icons.more_vert , size: 35, color: Colors.grey.shade600,),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3/4,
              ),

              itemBuilder: (context, index) => gridviewImage(
                images[index]['img'],
                images[index]['name'],
                images[index]['number'],
              ),
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget gridviewImage(String img, String name, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(img),
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              number,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
