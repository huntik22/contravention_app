import 'package:flutter/material.dart';

class PasswordRecovery2 extends StatefulWidget {
  const PasswordRecovery2({super.key});

  @override
  State<PasswordRecovery2> createState() => _PasswordRecovery2State();
}

class _PasswordRecovery2State extends State<PasswordRecovery2> {
  bool isChecked = false;

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
          Stack(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(color: Color(0xFFEAFFF7)),
          ),
          Container(
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
            ),
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:Text("Ajoutez de l'argent à\n votre portefeuille électronique", 
                    style: TextStyle(
                      color: Color(0xFF172B4D),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,), 
                      textAlign: TextAlign.center,            
                    ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(color:Color(0xFFF4F5F7),
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
                          cursorColor: const Color.fromARGB(255, 192, 194, 198),
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
                              padding: const EdgeInsets.all(10.0),
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding:const EdgeInsets.all(10),
                    decoration: const BoxDecoration(color:Color(0xFFF4F5F7),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0), 
                      ),        
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Montant",
                        style: TextStyle(
                          color:Color(0xFFD0D5DB)),
                        ),
                        const SizedBox(height: 10,),
                        TextField(
                          cursorColor: const Color.fromARGB(255, 192, 194, 198),
                          decoration: InputDecoration(   
                            hintText: '10 000  FCFA',
                            contentPadding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0, bottom: 0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),      
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Se recharger avec",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),      
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/icons/tresor.png'),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            const Text("Tresor Pay",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                ),      
                            ),
                            const SizedBox(width: 129,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: isChecked ? const Color(0xFF06c37e) : Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: isChecked
                                    ? const Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xFF06c37e),
                                          size: 10.0,
                                        ),
                                      )
                                    : null,
                              ),
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/icons/orange.png'),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            const Text("Orange Money",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                ),      
                            ),
                            const SizedBox(width: 92,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: isChecked ? const Color(0xFF06c37e) : Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: isChecked
                                    ? const Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xFF06c37e),
                                          size: 10.0,
                                        ),
                                      )
                                    : null,
                              ),
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 50.0, 
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('assets/icons/wave.png'),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            const Text("Wave",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                ),      
                            ),
                            const SizedBox(width: 169,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: isChecked ? const Color(0xFF06c37e) : Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: isChecked
                                    ? const Center(
                                        child: Icon(
                                          Icons.check,
                                          color: Color(0xFF06c37e),
                                          size: 10.0,
                                        ),
                                      )
                                    : null,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20,),         
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
                            "CONTINUER",
                              style: TextStyle(
                              color: Colors.white),
                          ),
                        )
                      ),
                    ),
                    ],
                  ),

                  )
              ], 
            )
          ),              
          Positioned(
            top: 10,  
            left: (MediaQuery.of(context).size.width - 100) / 2,  
            child: Image.asset(
              "assets/icons/porte_feuille.png",
              width: 100,
              height: 100,
            ),
          ),   
        ]
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.blue
        ),
        child: const Column(),
      )
        ],
      )
    );
  }
}