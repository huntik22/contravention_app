import 'package:flutter/material.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
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
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            margin: const EdgeInsets.only(top: 190),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child:Text("Réinitialiser mot de passe", 
                    style: TextStyle(
                      color: Color(0xFF172B4D),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,),             
                    ),
                ),
                const SizedBox(height: 10,),
                const Center(
                  child:Text("Entrez votre numéro de téléphone pour recevoir\n le code de confirmation", 
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
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color:Color(0xFFF4F5F7),
                      borderRadius: BorderRadius.all(
                          Radius.circular(15.0), 
                      ),  
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Numéro de téléphone",
                        style: TextStyle(
                          color:Color(0xFFD0D5DB)),
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          cursorColor: Color.fromARGB(255, 192, 194, 198),
                          decoration: InputDecoration(   
                            hintText: '(+225) 0759302928',
                            contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0, bottom: 0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),      
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),                                              
                           prefixIcon: Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/icons/ivory-coast.png'),
                              ),
                            ),
                            labelStyle: const TextStyle(
                              color: Color(0xFFF4F5F7),
                            ),
                          ),
                        ),       
                      ],
                    ),
                  ),
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