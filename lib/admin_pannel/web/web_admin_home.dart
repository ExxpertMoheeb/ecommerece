
import 'package:ecommerece/admin_pannel/web/web_sideBar/addProduct_Screen.dart';
import 'package:ecommerece/admin_pannel/web/web_sideBar/cartProduct.dart';
import 'package:ecommerece/admin_pannel/web/web_sideBar/dashbord_screen.dart';
import 'package:ecommerece/admin_pannel/web/web_sideBar/deleteProduct_screen.dart';
import 'package:ecommerece/admin_pannel/web/web_sideBar/updateProduct_screen.dart';
import 'package:ecommerece/admin_pannel/web/web_admin_Loginscreen.dart';
import 'package:ecommerece/them_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WebAdminHome extends StatefulWidget {
   static  String id="webmain";
  const WebAdminHome({Key? key}) : super(key: key);

  @override
  State<WebAdminHome> createState() => _WebAdminHomeState();
}
class _WebAdminHomeState extends State<WebAdminHome> {
  FirebaseAuth auth=FirebaseAuth.instance;

// logout method
//  
    logout()async{
  await auth.signOut();
    clearSF();
     Navigator.push(context, MaterialPageRoute(builder: (context)=>WebAdminLogin()));
    }

  clearSF()async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     sharedPreferences.getKeys();
     sharedPreferences.clear();
  }
 Widget selectScreen= Dashboard();
   chooseScreen(item) {
  switch (item) {
    case Dashboard.id:
    setState(() {
      selectScreen =  Dashboard();
    });
      
      break;
    case AddProduct.id:
     setState(() {
         selectScreen =  AddProduct();
     });
      break;
    case UpdateProduct.id:
     setState(() {
        selectScreen =  UpdateProduct();
     });
      break;
    // case DeleteProduct.id:
    //    setState(() {
    //       selectScreen =  DeleteProduct();
    //    });
    //   break;
    case CartProduct.id:
      setState(() {
        selectScreen =  CartProduct();
      });
      break;
     
    default:
    
  }
}


  @override
  Widget build(BuildContext context) {
  var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return AdminScaffold(
      backgroundColor:MyThemeClass.lightsecoundryColor,
      appBar:AppBar(
         backgroundColor:MyThemeClass.secoundryColor,
        title: Text("Admin ",style: TextStyle(color: MyThemeClass.blackColor)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            logout();
          }, icon: Icon(Icons.logout,color: MyThemeClass.blackColor,))
        ],
      ),
      sideBar: SideBar(
        backgroundColor: MyThemeClass.secoundryColor,
         onSelected: ((item) {
           chooseScreen(item.route);
         }),
         iconColor: MyThemeClass.blackColor,
        items:const [

        AdminMenuItem(
          
          title: "DASDHBOARD",
        route: Dashboard.id,
        icon: Icons.dashboard
        ),
          AdminMenuItem(title: "ADD PRODUCT",
           route: AddProduct.id,
          icon: Icons.add),
          //   AdminMenuItem(title: "DELETE PRODUCT",
          //  route: DeleteProduct.id,
          //   icon: Icons.delete),
              AdminMenuItem(title: "UPDATE PRODUCT",
               route: UpdateProduct.id,
                icon: Icons.update
              ),
            
                AdminMenuItem(

                  title: " New Orders",
                 route:CartProduct.id,
                icon: Icons.shop,),
           
      ], 
    //  activeTextStyle:TextStyle(color: MyThemeClass.blackColor),
      activeBackgroundColor: MyThemeClass.greenColor!,
      //activeTextStyle: MyThemeClass.greenColor!,

      activeIconColor: MyThemeClass.secoundryColor,
      borderColor: MyThemeClass.lightsecoundryColor,
      textStyle:  TextStyle(color: MyThemeClass.lightsecoundryColor),
      selectedRoute:WebAdminHome.id
      ), body: selectScreen,
      
      
    
       );
  }
}
