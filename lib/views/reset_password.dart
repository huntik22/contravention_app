import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
   bool _obsureText = true;
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
            height: 90,
            decoration: const BoxDecoration(color: Color(0xFFEAFFF7)),
          ),

          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            margin: const EdgeInsets.only(top: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:Text("Modifier votre mot de passe", 
                    style: TextStyle(
                      color: Color(0xFF172B4D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,),             
                    ),
                ),
                const SizedBox(height: 10,),
                const Center(
                  child:Text("Au moins 8 caractères, avec des majuscules\n et des miniscules", 
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFB9BFC9),
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Nouveau mot de passe",
                      style: TextStyle(
                        color:Color(0xFFD0D5DB)),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        obscureText: _obsureText,
                        cursorColor: const Color(0xFFD0D5DB),
                        decoration: InputDecoration(   
                          contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0, bottom: 0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15.0),
                          ),      
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15.0),
                          ),                          
                          filled: true,                
                          focusColor: const Color(0xFFD0D5DB),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsureText = !_obsureText;
                              });
                            },
                            child: Icon(_obsureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          labelStyle: const TextStyle(
                            color: Color(0xFFD0D5DB),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Confirmer le mot de passe",
                      style: TextStyle(
                        color:Color(0xFFD0D5DB)),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        obscureText: _obsureText,
                        cursorColor: const Color(0xFFD0D5DB),
                        decoration: InputDecoration(   
                          contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0, bottom: 0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15.0),
                          ),      
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15.0),
                          ),                          
                          filled: true,                
                          focusColor: const Color(0xFFD0D5DB),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsureText = !_obsureText;
                              });
                            },
                            child: Icon(_obsureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          labelStyle: const TextStyle(
                            color: Color(0xFFD0D5DB),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 90,),
                
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
                      width: 250,
                      height: 45,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10),
                      child:const Text(
                        "CONNEXION",
                          style: TextStyle(
                          color: Colors.white),
                      ),
                    )
                  ),
                ),
                       
              ],
            ),
          ),

          Positioned(
            top: 35,  
            left: (MediaQuery.of(context).size.width - 100) / 2,  
            child: Image.asset(
              "assets/icons/cadena.png",
              width: 100,
              height: 100,
            ),
          ),   
        ], 
      )  
    );
  }
}