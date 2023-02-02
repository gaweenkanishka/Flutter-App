import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLoginScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity ,
      height: double.infinity,
      color:  Colors.white,
      child:
    /*  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [*/
          Center(
            child: Image.network('https://images.unsplash.com/photo-1538391543564-047a76156421?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
          ),

      ////////////////////////// button  on separated screen and click to clear previous data and go back to login page/////////////
          /*Container(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context ,
                  MaterialPageRoute(builder: (BuildContext context) =>  Login_Page()),
                );
              },
              child: Text('Push and remove until'),
            ),
          )*/
    );
  }

  //////////////////////// Navigate to Login page  //////////////////////////////
  void navigateToLoginScreen(BuildContext context)
  {
      Future.delayed(Duration(seconds: 3), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Page()));
});
  }
}
