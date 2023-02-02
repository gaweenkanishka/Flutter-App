import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/home_page.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Demo Test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        leading: Icon(
          Icons.account_balance,
          color: Colors.white,
        ),
      ),
      body: Container(

          /////////////////// Box with image ///////////////////////
          /*  padding: EdgeInsets.symmetric(horizontal: 10, vertical:10 ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            )
          ]
        ),
        width: 400,
        height: 200,
        child:Center(
         child: Image.network('https://miro.medium.com/max/1400/0*LtCDFBQudFeDS_f6')

         //asset('asset/island.jpg')
        // Text('Login Page',style: TextStyle(
            //  color: Colors.amber,
             // fontSize: 20,
         //   ),

        ),*/
////// scrolable login page //////////////////////
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                width: 400,
                height: 200,
                child: Image.network(
                    'https://www.nicepng.com/png/detail/144-1446162_pin-businessman-clipart-png-flat-user-icon.png')),

            ///////////////////////////INPUT TEXT FORM /////////////////////////
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        print(value);
                      },
                      controller: _usernameController,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter Your User Name',
                          hintText: 'User name'),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter Your Password',
                          hintText: 'Password'),
                    ),
                  ),

                  /////////////////////////// LOGIN BUTTON ////////////////////////////
                  Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: ElevatedButton(
                      onPressed: loginButtonClick,

                      //////// go to home page with back function ////////
                      /*  () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                   },
                  */

                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  /////////////// validating credentials //////////////

  void loginButtonClick() {
    if (_usernameController.text == 'user123' &&
        _passwordController.text == '12345') {
      print('Login success');
      /*  Navigator.pushReplacement(
         context ,
         MaterialPageRoute(builder: (BuildContext context) =>  HomePage()),*/

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => HomePage(
                  username: _usernameController.text,
                )),
      );
    } else {
      print('Login Fail');
      showAlertDialog(context);
    }
  }

  //////////////////// popup for invalid credentials ////////////
  showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Ok'));
    AlertDialog alertDialog = AlertDialog(
      title: Text('Error'),
      content: Text('User name or Password may be Wrong '),
      actions: [okButton],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
