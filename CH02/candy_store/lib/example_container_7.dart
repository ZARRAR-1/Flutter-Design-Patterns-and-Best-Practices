import 'package:flutter/material.dart';

//In Flutter, if you don't provide a MaterialApp and Scaffold widget as the root of your application,
// the Container widget might not behave as you expect
// in terms of layout and constraints.The Container widget,
// when used as the root of an app without a Scaffold,
// will try to fill the entire screen. This is because it doesn't have the layout constraints that Scaffold typically provides.
// The child Container then also expands to fill its parent.

void main() {
  runApp(
    Container(
      height: 10,
      width: 10,
      color: Colors.red,
    ),
  );
}

/*
Shows a Red 10 x 10 Container.
void main() {
   runApp(
     MaterialApp(
       home: Scaffold(
         body: Container(
           height: 10,
           width: 10,
           color: Colors.red,
         ),
       ),
     ),
  );
 } */
//=================================================================================================================================================================================================
/*In Flutter, if a child Container doesn't have its own explicit height and width,
it will try to be as big as its parent allows.
In your case:
1.The parent Container is explicitly sized to 200x200 and has a Colors.red background.
2.The child Container has no explicit size. Therefore, it expands to fill the entire 200x200 space provided by its parent.
3.Because the child Container completely fills the parent,
its Colors.grey background will cover the parent's Colors.red background.
What you are likely seeing is the Colors.grey background of the child Container.
If you were expecting to see a red border around a grey box,
you'd need to adjust the sizing or add padding.


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
======================================================================================*/
/*
There was a glitch in rendering UI if I don't use Align widget. Child grey container was entirely overlapping the parent red container.
I should use ALign or Stack widget b/c I am stacking 2 same widgets over eachother, so use either Align or either add Stack Widgets or add Padding/Margin

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    ),
  );
}
*/
