import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/my_povider.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const
             Padding(
               padding: EdgeInsets.all(40),
               child: Text(' light ',style: TextStyle(
              fontSize: 18
            ),),
            ),

            Switch(
             value:context.watch<MyProvider>().swVal
              ,
              onChanged: ( bool val )=>
               context.read<MyProvider>().switchChange(val)
            ,
              activeColor: Colors.black,
              inactiveThumbColor: Colors.blue,
              )


           ,const Padding(padding: EdgeInsets.all(40),
              child: Text('dark',style: TextStyle(
                  fontSize: 18
              ),),
            )
          ],
        ),
      ),
    );
  }
}
