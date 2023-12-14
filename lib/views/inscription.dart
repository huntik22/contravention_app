import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool _obsureText = true;
  bool accepted = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        actions:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Vous avez déjà un compte?", 
              style: TextStyle(color:Color(0xFF172b4d),
              fontSize: 13 ), ),                       
              TextButton(
                onPressed: (){},
                child:const Text("Connexion", 
              style: TextStyle(color:Color(0xFF53D5A6), fontSize: 13 ),
              ), )
            ],
          )
          ],
        backgroundColor: const Color(0xFFEAFFF7),
      ),
      body: Stack(
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(color: Color(0xFFEAFFF7)),
          ),

          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            margin: const EdgeInsets.only(top: 130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:Text("Inscription", 
                    style: TextStyle(
                      color: Color(0xFF172B4D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,),             
                    ),
                ),
                const SizedBox(height: 10,),
                const Center(
                  child:Text("Créez votre compte et continuez", 
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA8B0BD),
                    ),
                  )
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Votre nom",
                      style: TextStyle(
                        color:Color(0xFFD0D5DB)),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        cursorColor: Colors.grey[400],
                        decoration: InputDecoration(   
                          hintText: 'Alassane Ouattara',
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
                          prefixIcon: const Icon(Icons.person_2),
                           suffixIcon: Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/icons/checked.png'),
                              ),
                            ),
                          // suffixIcon: IconButton(onPressed: onPressed, icon: icon),
                          labelStyle: const TextStyle(
                            color: Color(0xFFD0D5DB),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Numéro de téléphone",
                      style: TextStyle(
                        color:Color(0xFFD0D5DB)),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty ||
                        //       !GetUtils.isNum(value)) {
                        //     return 'Svp veuillez entrer un mail correct';
                        //   }
                        //   return null;
                        // },
                        cursorColor: Colors.grey[400],
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
                          filled: true,                
                          focusColor: const Color(0xFFD0D5DB),
                          prefixIcon: const Icon(Icons.phone_android),
                           suffixIcon: Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/icons/checked.png'),
                              ),
                            ),
                          // suffixIcon: IconButton(onPressed: onPressed, icon: icon),
                          labelStyle: const TextStyle(
                            color: Color(0xFFD0D5DB),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Mot de passe",
                      style: TextStyle(
                        color:Color(0xFFD0D5DB)),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
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
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          accepted = !accepted;
                        });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: accepted ? Colors.green : const Color(0xFFB9BFC9), 
                          ),
                        ),
                        child: Center(
                          child: accepted
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.green , 
                                )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(width: 13,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("En créant un compte, vous acceptez nos", 
                            style: TextStyle(color:Color(0xFFB9BFC9),
                            fontSize: 12 ),
                            textAlign: TextAlign.center, ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("conditions d'utilisation.", 
                            style: TextStyle(color:Color(0xFFB9BFC9),
                            fontSize: 12 ),
                            textAlign: TextAlign.center, ),
                        TextButton(
                          onPressed: (){},
                          child:const Text("Conditions d'utilisation", 
                            style: TextStyle(
                              color:Color(0xFF53D5A6), 
                              fontSize: 12 ),
                              textAlign: TextAlign.center,
                          ),
                        )
                          ],
                        ) 
                        
                      ],
                    )
                    

                  ],
                ),
                  ),
                
                const SizedBox(height: 40,),         
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
            top: 10,  
            left: (MediaQuery.of(context).size.width - 100) / 2,  
            child: Image.asset(
              "assets/icons/user.png",
              width: 100,
              height: 100,
            ),
          ),   
        ], 
      )  
    );
  }
}