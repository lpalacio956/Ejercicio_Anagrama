import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnagramScreen(),
    );
  }
}

class AnagramScreen extends StatefulWidget {
  const AnagramScreen({super.key});

  @override
  State<AnagramScreen> createState() => _AnagramScreenState();
}

class _AnagramScreenState extends State<AnagramScreen> {

  final TextEditingController _text1Controller = TextEditingController();
  final TextEditingController _text2Controller = TextEditingController();

  String result = "";
  Color resultColor = Colors.black;

  String cleanText(String text) {
    return text
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-záéíóúüñ]'), '');
  }

  bool areAnagrams(String text1, String text2) {
    String clean1 = cleanText(text1);
    String clean2 = cleanText(text2);

    if (clean1.length != clean2.length) {
      return false;
    }

    List<String> list1 = clean1.split('')..sort();
    List<String> list2 = clean2.split('')..sort();

    return list1.join() == list2.join();
  }

  void validateAnagram() {

    String text1 = _text1Controller.text.trim();
    String text2 = _text2Controller.text.trim();

    if (text1.isEmpty || text2.isEmpty) {
      setState(() {
        result = "⚠️ Ambos campos son obligatorios";
        resultColor = Colors.orange;
      });
      return;
    }

    bool isAnagram = areAnagrams(text1, text2);

    setState(() {
      if (isAnagram) {
        result = "✅ Son Anagramas";
        resultColor = Colors.green;
      } else {
        result = "❌ No son Anagramas";
        resultColor = Colors.red;
      }
    });

    // Limpiar campos después de validar
    _text1Controller.clear();
    _text2Controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Verificador de Anagramas"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    const Icon(
                      Icons.compare_arrows,
                      size: 60,
                      color: Colors.indigo,
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Ingrese dos palabras o frases",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 25),

                    TextField(
                      controller: _text1Controller,
                      decoration: const InputDecoration(
                        labelText: "Primera palabra o frase",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.text_fields),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      controller: _text2Controller,
                      decoration: const InputDecoration(
                        labelText: "Segunda palabra o frase",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.text_fields),
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: validateAnagram,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text(
                          "Validar",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    Text(
                      result,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: resultColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}