import 'package:flutter/material.dart';
import 'package:login/components/default_button.dart';
import 'package:login/constants.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/size_config.dart';

//import 'mobile_form.dart';
class OrderDetails extends StatelessWidget {
  static String routeName = "/components";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: Detailssection(),
    );
  }
}

class Detailssection extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Detailssection> {
 
  
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
                "Order Details",
                style: headingStyle,
              ),
                            SizedBox(height: SizeConfig.screenHeight * 0.01),

            Text("Text For any additional information"),
              //MobileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),

                TextFormField(
                 decoration: InputDecoration(
             prefixIcon: Icon(Icons.description),

                labelText: 'Description'
    
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
             prefixIcon: Icon(Icons.home_repair_service),

                labelText: 'Weight'

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

      /*      TextFormField(
              decoration: InputDecoration(
                             prefixIcon: Icon(Icons.phone_android),

                labelText: 'Phone Number'
              ),
              
            )
*/
              
            ],
          ),
        ),
      ),
    ),                    Spacer(),

                    DefaultButton(
                      text: "Place Order",
                      press: () {
                        Navigator.pushNamed(context, Checkout.routeName);
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
