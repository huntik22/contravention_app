import 'package:flutter/material.dart';

class Inscription1 extends StatefulWidget {
  const Inscription1({super.key});

  @override
  State<Inscription1> createState() => _Inscription1State();
}

class _Inscription1State extends State<Inscription1> {

  bool accepted = false;
  List<String> vehicules = [
    'Mercedes',
    'Ferrari',
    'Tucson',
    'Peugeot',
    'Honda'
  ];
  String hintMarque = "Mercedes";

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
              height: 70,
              decoration: const BoxDecoration(color: Color(0xFFEAFFF7)),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              margin: const EdgeInsets.only(top: 130),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Vos informations",
                      style: TextStyle(
                        color: Color(0xFF172B4D),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                      child: Text(
                    "Votre permis & ajoutez un vehicule ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA8B0BD),
                    ),
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Numéro du permis de conduire",
                          style: TextStyle(color: Color(0xFFD0D5DB)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          cursorColor: Colors.grey[400],
                          decoration: InputDecoration(
                            hintText: 'OUAT01-20-92817361AK',
                            contentPadding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 0, bottom: 0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            focusColor: const Color(0xFFD0D5DB),
                            prefixIcon: Container(
                              width: 50.0,
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/icons/badge.png'),
                              ),
                            ),
                            suffixIcon: Container(
                              width: 50.0,
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/icons/checked.png'),
                              ),
                            ),
                            labelStyle: const TextStyle(
                              color: Color(0xFFD0D5DB),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Marque de votre vehicule",
                          style: TextStyle(
                            color: Color(0xFFD0D5DB),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xFFDAE3E5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: DropdownButton(
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  value: hintMarque,
                                  items:
                                      List.generate(vehicules.length, (index) {
                                    return DropdownMenuItem(
                                      value: vehicules[index],
                                      child: Text(
                                        vehicules[index],
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 52, 53, 53),
                                        ),
                                      ),
                                    );
                                  }),
                                  onChanged: (value) {
                                    setState(() {
                                      hintMarque = value!;
                                    });
                                  },
                                  isExpanded: true,
                                  underline: Container(),
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xFF585B5C)),
                                  dropdownColor: Colors.white,
                                  iconEnabledColor: const Color(0xFF585B5C),
                                )
                              )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Plaque d'immatriculation",
                          style: TextStyle(color: Color(0xFFD0D5DB)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          cursorColor: Colors.grey[400],
                          decoration: InputDecoration(
                            hintText: '0101HA01',
                            contentPadding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 0, bottom: 0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            focusColor: const Color(0xFFD0D5DB),
                            prefixIcon: Container(
                              width: 50.0,
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/icons/car.png'),
                              ),
                            ),
                            suffixIcon: Container(
                              width: 50.0,
                              height: 50.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/icons/checked.png'),
                              ),
                            ),
                            // suffixIcon: IconButton(onPressed: onPressed, icon: icon),
                            labelStyle: const TextStyle(
                              color: Color(0xFFD0D5DB),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                                color: accepted
                                    ? Colors.green
                                    : const Color(0xFFB9BFC9),
                              ),
                            ),
                            child: Center(
                              child: accepted
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )
                                  : null,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "En créant un compte, vous acceptez nos",
                              style: TextStyle(
                                  color: Color(0xFFB9BFC9), fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "conditions d'utilisation.",
                                  style: TextStyle(
                                      color: Color(0xFFB9BFC9), fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Conditions d'utilisation",
                                    style: TextStyle(
                                        color: Color(0xFF53D5A6), fontSize: 12),
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
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF06C37E),
                          side: const BorderSide(
                              width: 1, color: Colors.transparent),
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
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            "TERMINER L'INSCRIPTION",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
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
        ));
  }
}
