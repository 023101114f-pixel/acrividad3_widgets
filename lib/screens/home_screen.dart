import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 Scaffold (estructura base)
      appBar: AppBar(
        title: const Text("Galería de Plantas 🌿"),
        centerTitle: true,
      ),
      body: ListView(
        // 🔹 ListView (permite scroll vertical)
        padding: const EdgeInsets.all(16),
        children: [
          // ===============================
          // 🔵 EJEMPLO 1: COLUMN
          // ===============================
          const Text(
            "Ejemplo Column (Vertical)",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Column(
            // 🔹 Column (organiza verticalmente)
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://picsum.photos/200/150?random=1",
                height: 120,
              ),
              const SizedBox(height: 10),
              Image.network(
                "https://picsum.photos/200/150?random=2",
                height: 120,
              ),
              const SizedBox(height: 10),
              Image.network(
                "https://picsum.photos/200/150?random=3",
                height: 120,
              ),
            ],
          ),

          const SizedBox(height: 40),

          // ===============================
          // 🟢 EJEMPLO 2: ROW
          // ===============================
          const Text(
            "Ejemplo Row (Horizontal)",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Row(
            // 🔹 Row (organiza horizontalmente)
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://picsum.photos/100/100?random=4"),
              Image.network("https://picsum.photos/100/100?random=5"),
              Image.network("https://picsum.photos/100/100?random=6"),
            ],
          ),

          const SizedBox(height: 40),

          // ===============================
          // 🟡 EJEMPLO 3: EXPANDED
          // ===============================
          const Text(
            "Ejemplo Expanded",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Row(
            // 🔹 Row
            children: [
              Expanded(
                // 🔹 Expanded (ocupa espacio disponible)
                child: Image.network(
                  "https://picsum.photos/200/150?random=7",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                // 🔹 Expanded
                child: Image.network(
                  "https://picsum.photos/200/150?random=8",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),

          // ===============================
          // 🟣 EJEMPLO 4: STACK
          // ===============================
          const Text(
            "Ejemplo Stack (Superposición)",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          Center(
            child: Stack(
              // 🔹 Stack (superpone widgets)
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://picsum.photos/300/200?random=9",
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 300,
                  height: 200,
                  color: Colors.black.withOpacity(0.4),
                ),
                const Text(
                  "Planta Premium 🌿",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
