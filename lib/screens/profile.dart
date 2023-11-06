import 'package:flutter/material.dart';
// import 'package:university_app/screens/register.dart';
// import 'package:university_app/screens/homepage.dart';
import 'package:university_app/screens/Log in.dart';

class profile extends StatefulWidget{
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:AppBar(
      title:const Text("Account Info"),backgroundColor: Colors.black, 
      centerTitle: true,
      actions:<Widget>[
     PopupMenuButton(
        icon:const Icon(Icons.menu),
        itemBuilder:(context)=>[
            PopupMenuItem(
              child: Row(
                children: [
                  const Icon(Icons.settings,color:Colors.black),
                   Container(
                    margin:const EdgeInsets.only(left:10),
                    child:const Text('Settings'))
                ],
                )
                ),
            PopupMenuItem(
              child: Row(
                children: [
                  const Icon(Icons.notifications,color:Colors.black),
                   Container(
                    margin:const EdgeInsets.only(left:10),
                    child:const Text('Notifications'))
                ],
                )
                ),
                  PopupMenuItem(
              child: Row(
                children: [
                   const Icon(Icons.logout, color:Colors.black),
                   Container(
                    margin:const EdgeInsets.only(left:10),
                    child:const Text('Logout'))
                ],
                ),
                onTap:(){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>Login(),));
                }
                )


        ]
       )
     
        ], 
        //  leading: IconButton(
        //     onPressed: (){},
        //     icon:IconButton(
        //       icon:const Icon(Icons.menu) ,
        //         onPressed: (){},),
        //   )
      
    ),
    backgroundColor: Colors.grey,
  
   body:SingleChildScrollView
   (
    child:Center(
      child: Container( 
        
        child:Column(
          children: [
            const SizedBox(
              width: 220,
              height: 220,
              child:Icon(
             Icons.account_circle_sharp,
              color: Colors.black,
           size: 200,
          //  semanticLabel: 'Text to announce in accessibility modes',
    ),
            ),
           const SizedBox(
            height:50,
           ),
        const SizedBox(

            child:Center( 
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                    Text('Name:',
                    style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                     Text('Phone Number:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                     Text('Email:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                     Text('HomeAddress:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                     Text('HighSchool:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                     Text('Course:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),
                    SizedBox(height: 30,),
                    Text('Password:',
                     style:TextStyle(fontSize:15,fontWeight: FontWeight.bold )),

                ],)
        
            )
          ),            
             Padding ( 
             padding:const EdgeInsets.fromLTRB(0,25,0,15),
              child: ElevatedButton( 
               style: ElevatedButton.styleFrom(
              minimumSize:const Size(180,50),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              side: BorderSide.none
            ),
            child: const Text('Edit Profile'),
            onPressed: (){},

            )),
          ],
        )
        
        
             ),
    )
        
   

     
          
           ), 
           
       
         
        );

  }
}