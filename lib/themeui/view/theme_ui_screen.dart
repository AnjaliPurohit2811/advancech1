import 'package:advancech1/themeui/provider/change_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<ThemeProvider>(context).isDark? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light ,
        colorScheme: ColorScheme.light(
          primary: Colors.yellow
        )
      ),
      darkTheme: ThemeData.dark(
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.add_circle_outline_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Align(alignment: Alignment.center,),
            CircleAvatar(radius: 80, backgroundImage:AssetImage('asset/img/girl.jpg')),
            SizedBox(height: 10,),
            Text('Testing User' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w600),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
              child: ListTile(
                leading: Provider.of<ThemeProvider>(context , listen: true).isDark ? Icon(Icons.dark_mode_outlined , color: Theme.of(context).colorScheme.primary, ) : Icon(Icons.light_mode_outlined),
                title: Provider.of<ThemeProvider>(context, listen: true).isDark
                    ? const Text(
                  'Dark mode',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
                    : const Text(
                  'Light mode',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: Provider.of<ThemeProvider>(context, listen: true).isDark,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false).changeTheme(value);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.grid_on_outlined),
                title: Text('Story' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings and Privacy' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child: ListTile(
                leading: Icon(Icons.chat_outlined),
                title: Text('Help Center' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              child: ListTile(
                leading: Icon(Icons.notifications_none_outlined),
                title: Text('Notification' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
