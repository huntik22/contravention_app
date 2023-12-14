import 'package:flutter/material.dart';

class PaiementReussi extends StatefulWidget {
  const PaiementReussi({super.key});

  @override
  State<PaiementReussi> createState() => _PaiementReussiState();
}

class _PaiementReussiState extends State<PaiementReussi> {
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
            decoration: const BoxDecoration(
              color: Color(0xFFEAFFF7)
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 350),
            child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const Center(
                child: Text("Paiement effectué", 
                  style: TextStyle(
                    color:Color(0xFF45CD82),
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                    )
                  ),
              ),
              const Center(
                child: Text("Votre compte a été débité", 
                  style: TextStyle(
                    color:Color(0xFF1B2F50),
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                    )
                  ),
              ),
              const SizedBox(height: 40,),
              Center(
                  child: ElevatedButton(
                    onPressed:() {},             
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFFFDD00),
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
                      child:const  Row(
                        children: [
                          SizedBox(width: 25,),
                          Icon(Icons.description, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text(
                            "Télécharger le reçu",
                              style: TextStyle(
                              color: Colors.white),
                          ),
                        ],
                      )
                    )
                  ),
                ), 
                const SizedBox(height: 30,), 
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.home,
                    color: Color(0xFF45CD82),
                    size: 60,
                  )
                )             
            ],
          ),
        ),      
        Positioned(
          top: 160,  
          left: (MediaQuery.of(context).size.width - 210) / 2,  
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
      
           
            ),
            width: 200.0,
            height: 200.0,
            padding: const EdgeInsets.all(10.0),
            child: const CircleAvatar(          
              backgroundColor: Color(0xFFEAFFF7),
              backgroundImage: AssetImage('assets/icons/valide.png', ),
            ),
          ),
        ), 
        ],
      )
    );
  }
}