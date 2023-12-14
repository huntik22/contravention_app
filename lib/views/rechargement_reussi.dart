import 'package:flutter/material.dart';

class RechargementReussi extends StatefulWidget {
  const RechargementReussi({super.key});

  @override
  State<RechargementReussi> createState() => _RechargementReussiState();
}

class _RechargementReussiState extends State<RechargementReussi> {
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
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
               const Center(
                child: Text("Rechargement effectué", 
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
              const SizedBox(height: 70,), 
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.home,
                    color: Color(0xFF45CD82),
                    size: 70,
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
      
              /* boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 10.0, 
                  spreadRadius: 2.0, 
                  offset: Offset(0, 0), 
                ),
              ], */
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