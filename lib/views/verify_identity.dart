import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        backgroundColor: const Color(0xFFEAFFF7),
      ),
      body: Stack(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(color: Color(0xFFEAFFF7)),
          ),

          Container(
            margin: const EdgeInsets.only(top: 190),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child:Text("Confirmation du N°", 
                    style: TextStyle(
                      color: Color(0xFF172B4D),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,),             
                    ),
                ),
                const SizedBox(height: 10,),
                const Center(
                  child:Text("Veuillez entrer le code reçu au\n (+225) 0759302928", 
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFB9BFC9),
                    ),
                    textAlign:TextAlign.center
                  )
                ),
                const SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Pinput(    
                                 
                        showCursor: true,
                        defaultPinTheme: PinTheme(
                          width: 57,
                          height: 60,
                          decoration: BoxDecoration(
                            
                            color: const Color(0xFFD0D5DB),
                            border: Border.all(color: const Color(0xFFf4f5f7)),
                            borderRadius: BorderRadius.circular(15),       
                            
                          ),
                        ),
                        
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Je n'ai pas reçu le code.", 
                          style: TextStyle(color:Color(0xFFB9BFC9),
                          fontSize: 13 ), ),                       
                          TextButton(
                            onPressed: (){},
                            child:const Text("Renvoyez le code", 
                          style: TextStyle(color:Color(0xFF53D5A6), fontSize: 13 ),
                          ), )
                        ],
                      )
                      
                    ],
                  ),
                ),
                const SizedBox(height: 110,),         
                Center(
                  child: ElevatedButton(
                    onPressed:() {},
                    
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF06C37E),
                        side: const BorderSide(
                            width: 1,
                            color: Colors.transparent),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0), 
                          ),
                        ),
                      ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 45,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10),
                      child:const Text(
                        "CONTINUER",
                          style: TextStyle(
                          color: Colors.white),
                      ),
                    )
                  ),
                ),
                 const SizedBox(height: 10,),
          const Center(
            child:Text("En vous connectant, vous acceptez", 
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFFB9BFC9),
              ),
              textAlign:TextAlign.center
            )
          ),            
          const SizedBox(height: 2,),
          const Center(
            child:Text("La politique de confidentialité", 
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF53D5A6),
              ),
              textAlign:TextAlign.center
            )
          ),         
              ], 
            )
          ),  
            
          Positioned(
            top: 45,  
            left: (MediaQuery.of(context).size.width - 100) / 2,  
            child: Image.asset(
              "assets/icons/cadena.png",
              width: 100,
              height: 100,
            ),
          ),   
        ]
      )
    );
  }
}