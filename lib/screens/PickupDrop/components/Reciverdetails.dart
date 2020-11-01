import 'package:flutter/material.dart';
import 'package:login/components/default_button.dart';
import 'package:login/constants.dart';
import 'package:login/screens/PickupDrop/components/OrderDetails.dart';
//import 'package:login/screens/HeavyOrder/components/splash_content.dart';
import 'package:login/size_config.dart';

//import 'mobile_form.dart';
class Receiver1 extends StatelessWidget {
  static String routeName = "/components";
  
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Reciver Details"),
      ),
      body: Receiver(),
    );
  }
}

class Receiver extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Receiver> {
 
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    
                    
                         SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.0001),
              Text(
                "Receiver's Details",
                style: headingStyle,
              ),
                            SizedBox(height: SizeConfig.screenHeight * 0.01),

            Text("Text For any additional information"),
              //MobileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),

                TextFormField(
                 decoration: InputDecoration(
             prefixIcon: Icon(Icons.location_city),

                labelText: 'Delivery Address'
    
             ),
            ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01),

            TextFormField(
              decoration: InputDecoration(
             prefixIcon: Icon(Icons.person),

                labelText: 'Name'

              ),
            ),

            SizedBox(height: SizeConfig.screenHeight * 0.01),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01),

            TextFormField(
              decoration: InputDecoration(
                             prefixIcon: Icon(Icons.phone_android),

                labelText: 'Phone Number'
              ),
              
            )

              
            ],
          ),
        ),
      ),
    ),                    Spacer(),

                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, OrderDetails.routeName);
                      },
                    ),
                                        Spacer(),
Text(
  '* By confirming I accept this order doesnt contain illegal/ restricted items. Zipu partner may ask to verify the contents of the package and could choose to refuse the task if the items arent verified. Terms and Conditions.',
  style: TextStyle(fontSize: 8),
),
                        
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
